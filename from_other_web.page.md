湖畔镇
 首页
 
 分类
 
 归档
 
 标签
DLNA开源库——Cling
 发表于 2017-02-13 |  分类于 Android
Cling是由Java实现的DLNA/UPnP协议栈。可以开发出类似多屏互动、资源共享、远程控制等功能的应用，通过Android 应用管理一个或多个设备，将音频、视频、图片推送到指定设备显示

Meta
ActionInvocation
动作请求的输入、输出和失败值

Action
描述一个动作和它的输入输出参数

ActionExecutor
处理ActionInvocation的处理器

Service
服务的元数据，里面维护了一组Action，有LocalService和RemoteService两个子类

LocalService
本地创建服务的元数据，维护了一张对应Action的ActionExecutor表

RemoteService
远程设备上发现服务的元数据，包括获取服务描述的URI，调用它的Action和订阅事件

Resource
一个可寻址的对象，通过Registry存储、管理和访问，对不同的资源有若干子类

public class Resource<M> {
    private URI pathQuery;
    private M model;
    ...
}
ServiceControlResource
public class ServiceControlResource extends Resource<LocalService> {
    ...
}
Device
描述一个设备，根或者嵌套的

public abstract class Device<DI extends DeviceIdentity, D extends Device, S extends Service> implements Validatable {
    final private DI identity;
    final private UDAVersion version;
    final private DeviceType type;
    final private DeviceDetails details;
    final private Icon[] icons;
    final protected S[] services;
    final protected D[] embeddedDevices;
    ...
}
RemoteDevice
网络上发现的设备

LocalDevice
本地创建的设备

DeviceIdentity
唯一的设备名，在网络发现时提供和接收

public class DeviceIdentity {
    final private UDN udn;
    final private Integer maxAgeSeconds;
    ...
}
RemoteDeviceIdentity
远程设备的额外信息，包括设备描述的URL，未来应该使用的本地网络接口，可能有对方设备的MAC

public class RemoteDeviceIdentity extends DeviceIdentity {
    final private URL descriptorURL;
    final private byte[] interfaceMacAddress;
    final private InetAddress discoveredOnLocalAddress;
    ...
}
GENASubscription
建立的订阅，有标识符、过期时间、序列处理和状态变量值，本地订阅和远端订阅都维护在Registry里

LocalGENASubscription
对于本地服务的订阅，即其他设备对自己的订阅

RemoteGENASubscription
对于远端服务的订阅，即自己对其他设备的订阅，一旦建立，当从远端服务接收事件时会调用eventReceived()

ControlPoint
异步执行网络搜索、操作、事件订阅的统一接口，后面的所有操作都要用到它

public interface ControlPoint {
    UpnpServiceConfiguration getConfiguration();
    ProtocolFactory getProtocolFactory();
    Registry getRegistry();
    void search();
    void search(UpnpHeader searchType);
    void search(int mxSeconds);
    void search(UpnpHeader searchType, int mxSeconds);
    void execute(ActionCallback callback);
    void execute(SubscriptionCallback callback);
}
主要是search()和execute()接口，ControlPointImpl是提供的实现类

ControlPointImpl
@Override
public void execute(ActionCallback callback) {
    callback.setControlPoint(this);
    getConfiguration().getSyncProtocolExecutor().execute(callback);
}
其中一个execute()，其实就是获得配置中给定的线程池，把命令放进去执行

@Override
    public void search(UpnpHeader searchType, int mxSeconds) {
        getConfiguration().getAsyncProtocolExecutor().execute(getProtocolFactory().createSendingSearch(searchType, mxSeconds));
    }
可以发现search()也是通过execute()实现的

ActionCallback
执行的动作基类，它是个可执行的Runnable，主要关注它的run()方法

@Override
public void run() {
    Service service = actionInvocation.getAction().getService();

    // Local execution
    if (service instanceof LocalService) {
        LocalService localService = (LocalService) service;

        // Executor validates input inside the execute() call immediately
        localService.getExecutor(actionInvocation.getAction()).execute(actionInvocation);

        if (actionInvocation.getFailure() != null) {
            failure(actionInvocation, null);
        } else {
            success(actionInvocation);
        }

    // Remote execution
    } else if (service instanceof RemoteService) {

        if (getControlPoint() == null) {
            throw new IllegalStateException("Callback must be executed through ControlPoint");
        }

        RemoteService remoteService = (RemoteService) service;

        // Figure out the remote URL where we'd like to send the action
        // request to
        URL controLURL = remoteService.getDevice().normalizeURI(remoteService.getControlURI());

        // Do it
        SendingAction prot = getControlPoint().getProtocolFactory().createSendingAction(actionInvocation, controLURL);
        prot.run();

        IncomingActionResponseMessage response = prot.getOutputMessage();

        if (response == null) {
            failure(actionInvocation, null);
        } else if (response.getOperation().isFailed()) {
            failure(actionInvocation, response.getOperation());
        } else {
            success(actionInvocation);
        }
    }
}
分为本地服务和远程服务，远程服务的话通过控制点发命令给目标URL，然后等待响应

org.teleal.cling.support包里都是ActionCallback的子类，仿照库里提供的一些命令可以很方便的根据协议添加

一般都是在构造函数中提供字段，并且实现success()和fail()方法供回调，成功或失败后的处理经常不一样，所以一般在使用命令的地方实现一个这样的类

Service service = device.findService(new UDAServiceId("SwitchPower"));
Action getStatusAction = service.getAction("GetStatus");
ActionInvocation getStatusInvocation = new ActionInvocation(getStatusAction);
ActionCallback getStatusCallback = new ActionCallback(getStatusInvocation) {
    public void success(ActionInvocation invocation) {
        ActionArgumentValue status = invocation.getOutput("ResultStatus");
        assertEquals((Boolean) status.getValue(), Boolean.valueOf(false));
    }
    
    public void failure(ActionInvocation invocation, UpnpResponse res) {
        System.err.println(createDefaultFailureMessage(invocation, res));
    }
};
upnpService.getControlPoint().execute(getStatusCallback);
注释中提供的示例代码

SubscriptionCallback
订阅和接受事件，通过GENA，它也是一个Runnable

   @Override
public void run() {
    if (getControlPoint() == null) {
        throw new IllegalStateException("Callback must be executed through ControlPoint");
    }
    if (getService() instanceof LocalService) {
        establishLocalSubscription((LocalService) service);
    } else if (getService() instanceof RemoteService) {
        establishRemoteSubscription((RemoteService) service);
    }
}
也是分为本地服务和远程服务的订阅

private void establishRemoteSubscription(RemoteService service) {
    RemoteGENASubscription remoteSubscription = new RemoteGENASubscription(service, requestedDurationSeconds) {
    
        @Override
        public void failed(UpnpResponse responseStatus) {
            synchronized (SubscriptionCallback.this) {
                SubscriptionCallback.this.setSubscription(null);
                SubscriptionCallback.this.failed(this, responseStatus, null);
            }
        }
        
        @Override
        public void established() {
            synchronized (SubscriptionCallback.this) {
                SubscriptionCallback.this.setSubscription(this);
                SubscriptionCallback.this.established(this);
            }
        }

        @Override
        public void ended(CancelReason reason, UpnpResponse responseStatus) {
            synchronized (SubscriptionCallback.this) {
                SubscriptionCallback.this.setSubscription(null);
                SubscriptionCallback.this.ended(this, reason, responseStatus);
            }
        }
        
        @Override
        public void eventReceived() {
            synchronized (SubscriptionCallback.this) {
                SubscriptionCallback.this.eventReceived(this);
            }
        }
        
        @Override
        public void eventsMissed(int numberOfMissedEvents) {
            synchronized (SubscriptionCallback.this) {
                SubscriptionCallback.this.eventsMissed(this, numberOfMissedEvents);
            }
        }
    };
    
    getControlPoint().getProtocolFactory().createSendingSubscribe(remoteSubscription).run();
}
failed()、established()、ended()、eventReceived()、eventMissed()都需要子类实现

Registry
UPNP协议栈的核心，追踪设备和资源，一个运行的UPNP栈有一个Registry，任何被发现的设备被添加到这个Registry里，暴露的本地设备也是一样，然后会持续的维持这些设备，必要时刷新他们的声明，过期时移除他们，同样追踪GENA事件订阅

ProtocolFactory
UPNP协议的工厂，工厂创建可执行的协议基于接收到的UPNP消息，或者本地设备/搜索/服务的元数据

    public interface ProtocolFactory {

    UpnpService getUpnpService();

    //  创建异步接收通知/搜索/搜索响应
    ReceivingAsync createReceivingAsync(IncomingDatagramMessage message) throws ProtocolCreationException;

    //  创建同步接收动作/订阅/退订/事件
    ReceivingSync createReceivingSync(StreamRequestMessage requestMessage) throws ProtocolCreationException;

    //  声明本地设备
    SendingNotificationAlive createSendingNotificationAlive(LocalDevice localDevice);

    //  移除本地设备
    SendingNotificationByebye createSendingNotificationByebye(LocalDevice localDevice);

    //  搜索广播
    SendingSearch createSendingSearch(UpnpHeader searchTarget, int mxSeconds);

    //  发送命令
    SendingAction createSendingAction(ActionInvocation actionInvocation, URL controlURL);

    //  发送订阅
    SendingSubscribe createSendingSubscribe(RemoteGENASubscription subscription);

    //  发送续订
    SendingRenewal createSendingRenewal(RemoteGENASubscription subscription);

    //  发送退订
    SendingUnsubscribe createSendingUnsubscribe(RemoteGENASubscription subscription);

    //  发送事件
    SendingEvent createSendingEvent(LocalGENASubscription subscription);
}
ProtocolFactoryImpl
@Override
public ReceivingAsync createReceivingAsync(IncomingDatagramMessage message) throws ProtocolCreationException {
    if (message.getOperation() instanceof UpnpRequest) {
        switch (incomingRequest.getOperation().getMethod()) {
            case NOTIFY:
                return isByeBye(incomingRequest) || isSupportedServiceAdvertisement(incomingRequest) ? new ReceivingNotification(getUpnpService(), incomingRequest) : null;
            case MSEARCH:
                return new ReceivingSearch(getUpnpService(), incomingRequest);
        }
    } else if (message.getOperation() instanceof UpnpResponse) {
        return new ReceivingSearchResponse(getUpnpService(), incomingResponse);
    }
}
创建接收异步消息的协议，分为请求和响应，其中请求包括通知ReceivingNotification()和搜索ReceivingSearch()，响应就是搜索结果的响应ReceivingSearchResponse()

@Override
public ReceivingSync createReceivingSync(StreamRequestMessage message) throws ProtocolCreationException {
    if (message.getOperation().getMethod().equals(UpnpRequest.Method.GET)) {
        return new ReceivingRetrieval(getUpnpService(), message);
    } else if (getUpnpService().getConfiguration().getNamespace().isControlPath(message.getUri())) {
        if (message.getOperation().getMethod().equals(UpnpRequest.Method.POST))
            return new ReceivingAction(getUpnpService(), message);
    } else if (getUpnpService().getConfiguration().getNamespace().isEventSubscriptionPath(message.getUri())) {
        if (message.getOperation().getMethod().equals(UpnpRequest.Method.SUBSCRIBE)) {
            return new ReceivingSubscribe(getUpnpService(), message);
        } else if (message.getOperation().getMethod().equals(UpnpRequest.Method.UNSUBSCRIBE)) {
            return new ReceivingUnsubscribe(getUpnpService(), message);
        }
    } else if (getUpnpService().getConfiguration().getNamespace().isEventCallbackPath(message.getUri())) {
        if (message.getOperation().getMethod().equals(UpnpRequest.Method.NOTIFY))
            return new ReceivingEvent(getUpnpService(), message);
    }
}
创建接收同步消息的协议，根据方法不同返回不同的协议

创建发送消息的协议比较简单，直接创建对应的

SendingAsync
异步处理协议、发送消息的基类，是一个Runnable

子类需要实现execute()方法

SendingSync
同步处理协议、发送消息的基类

public abstract class SendingSync<IN extends StreamRequestMessage, OUT extends StreamResponseMessage> extends SendingAsync {

    final private IN inputMessage;
    protected OUT outputMessage;

    protected SendingSync(UpnpService upnpService, IN inputMessage) {
        super(upnpService);
        this.inputMessage = inputMessage;
    }

    public IN getInputMessage() {
        return inputMessage;
    }

    public OUT getOutputMessage() {
        return outputMessage;
    }

    @Override
	final protected void execute() {
        outputMessage = executeSync();
    }

    protected abstract OUT executeSync();
}
同步等待处理结果，子类需要实现executeSync()方法

SendingAction
发送控制消息

protected IncomingActionResponseMessage invokeRemote(OutgoingActionRequestMessage requestMessage) {
    ......
    StreamResponseMessage streamResponse = sendRemoteRequest(requestMessage);
    ......
}
executeSync()里面调用了invokeRemote()方法，通过sendRemoteRequest()发送请求

protected StreamResponseMessage sendRemoteRequest(OutgoingActionRequestMessage requestMessage) throws ActionException {
    try {
        getUpnpService().getConfiguration().getSoapActionProcessor().writeBody(requestMessage, actionInvocation);
        return getUpnpService().getRouter().send(requestMessage);
    } catch (UnsupportedDataException ex) {
        throw new ActionException(ErrorCode.ACTION_FAILED, "Error writing request message. " + ex.getMessage());
    }
}
发送请求，可以看到是通过配置里给定的SOAPActionProcessor写入请求

SendingEvent
发送GENA事件消息到远程订阅者

public SendingEvent(UpnpService upnpService, LocalGENASubscription subscription) {
    super(upnpService, null); // Special case, we actually need to send several messages to each callback URL

    // TODO: Ugly design! It is critical (concurrency) that we prepare the event messages here, in the constructor thread!

    subscriptionId = subscription.getSubscriptionId();

    requestMessages = new OutgoingEventRequestMessage[subscription.getCallbackURLs().size()];
    int i = 0;
    for (URL url : subscription.getCallbackURLs()) {
        requestMessages[i] = new OutgoingEventRequestMessage(subscription, url);
        getUpnpService().getConfiguration().getGenaEventProcessor().writeBody(requestMessages[i]);
        i++;
    }

    currentSequence = subscription.getCurrentSequence();

    // Always increment sequence now, as (its value) has already been set on the headers and the
    // next event will use the incremented value
    subscription.incrementSequence();
}
构造函数里对订阅的每一个URL生成了请求消息executeSync()里都发出去

SendingSubscribe
发送订阅消息，获得响应，Registry.addRemoteSubscription()，调用subscription.establish()

SendingUnsubscribe
发送退订消息

SendingRenewal
发送续订消息

SendingSearch
发送搜索请求

   @Override
protected void execute() {
    OutgoingSearchRequest msg = new OutgoingSearchRequest(searchTarget, getMxSeconds());
    for (int i = 0; i < getBulkRepeat(); i++) {
        try {
            getUpnpService().getRouter().send(msg);
            
            // UDA 1.0 is silent about this but UDA 1.1 recomments "a few hundred milliseconds"
            Thread.sleep(getBulkIntervalMilliseconds());
        } catch (InterruptedException ex) {
        
        }
    }
}
SendingNotification
向注册的本地设备发送通知消息，两个子类分别通知存活和死亡

SendingNotificationAlive
SendingNotificationByebye
SOAPActionProcessor
完成UPNP SOAP和动作请求的互相转换
UPNP协议层处理本地和远程的动作请求，UPNP传输层接收和返回请求和响应，这个处理器是两层之间的适配器

public interface SOAPActionProcessor {

    void writeBody(ActionRequestMessage requestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException;

    void writeBody(ActionResponseMessage responseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException;

    void readBody(ActionRequestMessage requestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException;

    void readBody(ActionResponseMessage responseMsg, ActionInvocation actionInvocation) throws UnsupportedDataException;
}
SOAPActionProcessorImpl
这个是基于W3C DOM的默认实现的XML解析器

ReceivingAsync
所有异步处理协议的基类，处理UPnP消息的接收

ReceivingSync
所有同步处理协议的基类，处理UPnP消息的接收并返回响应

    public abstract class ReceivingSync<IN extends StreamRequestMessage, OUT extends StreamResponseMessage> extends ReceivingAsync<IN> {

    protected OUT outputMessage;

    protected ReceivingSync(UpnpService upnpService, IN inputMessage) {
        super(upnpService, inputMessage);
    }

    public OUT getOutputMessage() {
        return outputMessage;
    }

    @Override
	final protected void execute() {
        outputMessage = executeSync();
    }

    protected abstract OUT executeSync();

    public void responseSent(StreamResponseMessage responseMessage) {
    
    }

    public void responseException(Throwable t) {
    
    }
}
ReceivingAction
接收动作

@Override
protected StreamResponseMessage executeSync() {
    ...
    IncomingActionRequestMessage requestMessage = new IncomingActionRequestMessage(getInputMessage(), resource.getModel());
    ...
    invocation = new ActionInvocation(requestMessage.getAction());
    getUpnpService().getConfiguration().getSoapActionProcessor().readBody(requestMessage, invocation);
    ...
    resource.getModel().getExecutor(invocation.getAction()).execute(invocation);
    ...
    responseMessage = new OutgoingActionResponseMessage(invocation.getAction());
    ...
    getUpnpService().getConfiguration().getSoapActionProcessor().writeBody(responseMessage, invocation);
    return responseMessage;
}
接收消息，转化为ActionInvocation，然后由对应动作的处理器处理

LocalService里的actionExecutors并没有被赋过值，Why?
可能因为手机端只是发送动作给设备，而不接收动作

ReceivingEvent
接收GENA事件

@Override
protected OutgoingEventResponseMessage executeSync() {
    ...
    final IncomingEventRequestMessage requestMessage = new IncomingEventRequestMessage(getInputMessage(), resource.getModel());
    ...
    getUpnpService().getConfiguration().getGenaEventProcessor().readBody(requestMessage);
    ...
    //  处理事件的时候锁定订阅
    getUpnpService().getRegistry().lockRemoteSubscriptions();
    ...
    final RemoteGENASubscription subscription = getUpnpService().getRegistry().getRemoteSubscription(requestMessage.getSubscrptionId());
    ...
    getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(
        new Runnable() {
            @Override
            public void run() {
                subscription.receive(requestMessage.getSequence(), requestMessage.getStateVariableValues());}
        });
}
接收到GENA事件，调用远端订阅的eventReceived()

ReceivingSubscribe
接收订阅，根据id和头部信息选择续订或新订阅，续订就是延长时间并更新，新订阅就是Registry.addLocalSubscription()

subscription = new LocalGENASubscription(service, timeoutSeconds, requestMessage.getCallbackURLs()) {
    @Override
    public void established() {
        
    }

    @Override
    public void ended(CancelReason reason) {
        
    }

    @Override
    public void eventReceived() {
        getUpnpService().getConfiguration().getSyncProtocolExecutor().execute(getUpnpService().getProtocolFactory().createSendingEvent(this));
    }
};
添加这个subscription，在eventReceived()的时候会发送事件

ReceivingUnsubscribe
接收退订

ReceivingRetrieval
ReceivingSearch
接收搜索请求，响应本地已注册的设备

@Override
protected void execute() {
    ......
    UpnpHeader searchTarget = getInputMessage().getSearchTarget();
    ......
    for (NetworkAddress activeStreamServer : activeStreamServers) {
        sendResponses(searchTarget, activeStreamServer);
    }
}
对每个网络地址，发送响应

protected void sendResponses(UpnpHeader searchTarget, NetworkAddress activeStreamServer) {
    if (searchTarget instanceof STAllHeader) {
        sendSearchResponseAll(activeStreamServer);
    } else if (searchTarget instanceof RootDeviceHeader) {
        sendSearchResponseRootDevices(activeStreamServer);
    } else if (searchTarget instanceof UDNHeader) {
        sendSearchResponseUDN((UDN) searchTarget.getValue(), activeStreamServer);
    } else if (searchTarget instanceof DeviceTypeHeader) {
        sendSearchResponseDeviceType((DeviceType) searchTarget.getValue(), activeStreamServer);
    } else if (searchTarget instanceof ServiceTypeHeader) {
        sendSearchResponseServiceType((ServiceType) searchTarget.getValue(), activeStreamServer);
    } else if (searchTarget instanceof EASYLINKHeader) {

    } else {

    }
}
searchTarget是UPnP头，根据头的不同做不同处理

ReceivingNotification
接收通知消息

@Override
protected void execute() {
    ...
    if (getInputMessage().isAliveMessage()) {
        ...
        getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(new RetrieveRemoteDescriptors(getUpnpService(), rd)
    } else if (getInputMessage().isByeByeMessage()) {
        ...
        boolean removed = getUpnpService().getRegistry().removeDevice(rd);
    } else {
        ...
    }
}
如果是存活消息，处理和ReceivingSearchResponse类似，如果是再见消息，就移除设备

ReceivingSearchResponse
接收搜索的响应消息

protected void execute() {
    if (getInputMessage().getHeaders().containsKey("Easylink")) {
        matchEasylink(getInputMessage());
    }
    
    ...
    
    if (getUpnpService().getRegistry().update(rdIdentity)) {
        return;
    }
    
    ...
    
    getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(new RetrieveRemoteDescriptors(getUpnpService(), rd));
}
先对EasyLink消息做特殊处理，然后Registry.update()看是否已经注册有这个设备，最后把RemoteDevice封装成RetrieveRemoteDescriptors处理

private synchronized void matchEasylink(IncomingSearchResponse msg) {
    ...
    String[] headerSplit = headerStr.split("\r\n");
    String IP = null;
    String UUID = null;
    String Easylink = null;
    
    //  解析头部拿到这些字符串
    ...
    if (Easylink != null && Easylink.equals("1")) {
        if (IP != null && UUID != null) {
            //  发送EasyLink广播
            Intent in = new Intent();
            in.putExtra("EASYLINK", Easylink);
            in.putExtra("IP", IP);
            in.putExtra("UUID", UUID);
            in.setAction(ReceivingSearchResponse.ACTION_EASY_LINK_OK);
            
            if (ClingHelper.getInstance().getContext() != null) {
                ClingHelper.getInstance().getContext().sendBroadcast(in);
            }
            
            Map<String, String> mDataOnline = new HashMap<String, String>();
            mDataOnline.put("EASYLINK", Easylink);
            mDataOnline.put("IP", IP);
            mDataOnline.put("UUID", UUID);
            AndroidEzlinkHandler.me().notifyDeviceOnline(mDataOnline);
        }
    }
}
EasyLink处理拿到IP和UUID，然后发广播通知Android系统

RetrieveRemoteDescriptors
一个Runnable，获取所有的远程设备XML描述，分析并创建设备和服务元数据

在run()中判断一下设备URL是否已存在，设备是否已存在于Registry中，然后开始描述设备

protected void describe() {
    ...
    StreamRequestMessage deviceDescRetrievalMsg = new StreamRequestMessage(UpnpRequest.Method.GET, rd.getIdentity().getDescriptorURL());
    StreamResponseMessage deviceDescMsg = getUpnpService().getRouter().send(deviceDescRetrievalMsg);
    ...
    describe(deviceDescMsg.getBodyString());
}
这里请求设备描述信息，然后解析，这个过程包含了多个网络请求和XML解析，是很耗时的

protected void describe(String descriptorXML) {
    ...
    DeviceDescriptorBinder deviceDescriptorBinder = getUpnpService().getConfiguration().getDeviceDescriptorBinderUDA10();
    describedDevice = deviceDescriptorBinder.describe(rd, descriptorXML);
    ...
    notifiedStart = getUpnpService().getRegistry().notifyDiscoveryStart(describedDevice);
    ...
    RemoteDevice hydratedDevice = describeServices(describedDevice);
    ...
    getUpnpService().getRegistry().addDevice(hydratedDevice);
}
通过DeviceDescriptorBinder解析XML，得到RemoteDevice

protected RemoteDevice describeServices(RemoteDevice currentDevice) throws DescriptorBindingException, ValidationException {
    
    //  描述服务，先根据配置排除一些服务，然后依次描述
    List<RemoteService> describedServices = new ArrayList();
    if (currentDevice.hasServices()) {
        List<RemoteService> filteredServices = filterExclusiveServices(currentDevice.getServices());
        for (RemoteService service : filteredServices) {
            RemoteService svc = describeService(service);
            if (svc == null) {
                return null;
            }
            describedServices.add(svc);
        }
    }
    
    //  描述内嵌设备，递推的调用
    ...
    
    //  描述图标
    ...
    
    //  解析全部完成
    return currentDevice.newInstance(
        currentDevice.getIdentity().getUdn(),
        currentDevice.getVersion(), 
        currentDevice.getType(),
        currentDevice.getDetails(), 
        iconDupes,
        currentDevice.toServiceArray(describedServices),
        describedEmbeddedDevices);
}
对RemoteDevice进一步解析服务、内联设备和图标

protected RemoteService describeService(RemoteService service) throws DescriptorBindingException, ValidationException {
    URL descriptorURL = service.getDevice().normalizeURI(service.getDescriptorURI());
    StreamRequestMessage serviceDescRetrievalMsg = new StreamRequestMessage(UpnpRequest.Method.GET, descriptorURL);
    StreamResponseMessage serviceDescMsg = getUpnpService().getRouter().send(serviceDescRetrievalMsg);
    ...
    ServiceDescriptorBinder serviceDescriptorBinder = getUpnpService().getConfiguration().getServiceDescriptorBinderUDA10();
    return serviceDescriptorBinder.describe(service, serviceDescMsg.getBodyString());
}
通过ServiceDescriptorBinder解析XML，得到RemoteService

Router
网络传输层接口，封装传输层，为上层提供方法来发送UPNP流（HTTP）和发送UDP数据报，还有局域网广播
Router维护监听套接字和服务

public interface Router {

    void shutdown();

    void received(IncomingDatagramMessage msg);

    void received(UpnpStream stream);

    void send(OutgoingDatagramMessage msg);

    StreamResponseMessage send(StreamRequestMessage msg);

    void broadcast(byte[] bytes);
}
Router构造的时候会创建一组StreamServer、DatagramIO、MulticastReceiver，然后执行他们

RouterImpl
@Override
public void send(OutgoingDatagramMessage msg) {
    for (DatagramIO datagramIO : getDatagramIOs().values()) {
        datagramIO.send(msg);
    }
}
发送UDP消息，就是遍历所有的接口发送

@Override
public StreamResponseMessage send(StreamRequestMessage msg) {
    if (getStreamClient() == null) {
        return null;
    }
    return getStreamClient().sendRequest(msg);
}
发送HTTP数据，就是使用StreamClient发送请求

@Override
public void received(IncomingDatagramMessage msg) {
    try {
        ReceivingAsync protocol = getProtocolFactory().createReceivingAsync(msg);
        if (protocol == null) {
            return;
        }
        getConfiguration().getAsyncProtocolExecutor().execute(protocol);
    } catch (ProtocolCreationException ex) {
        
    }
}
接收UDP消息，构建一个ReceivingAsync并执行

@Override
public void received(UpnpStream stream) {
    getConfiguration().getSyncProtocolExecutor().execute(stream);
}
接收HTTP数据，直接执行UpnpStream

DatagramIO
接受单播和发送UDP数据报的服务，每个IP绑定一个
该服务在一个套接字上监听UDP单播数据报，监听循环在run()中开始，任何接收的数据报然后被转化为IncomingDatagramMessage，然后被Router.received()处理

    public interface DatagramIO<C extends DatagramIOConfiguration> extends Runnable {

    void init(InetAddress bindAddress, Router router, DatagramProcessor datagramProcessor) throws InitializationException;

    void stop();

    C getConfiguration();

    void send(OutgoingDatagramMessage message);

    void send(DatagramPacket datagram);
}
DatagramIOImpl
public void run() {
    while (true) {
        try {
            byte[] buf = new byte[getConfiguration().getMaxDatagramBytes()];
            DatagramPacket datagram = new DatagramPacket(buf, buf.length);

            socket.receive(datagram);

            router.received(datagramProcessor.read(localAddress.getAddress(), datagram));
        } catch (SocketException ex) {
            break;
        } catch (UnsupportedDataException ex) {
        
        } catch (Exception ex) {
            break;
        }
    }
    try {
        if (!socket.isClosed()) {
            socket.close();
        }
    } catch (Exception ex) {

    }
}
循环中先由套接字获得UDP数据报，然后交由Router.received()处理

synchronized public void send(DatagramPacket datagram) {
    ......
    socket.send(datagram);
    ......
}
通过Socket发送数据报，这是一个MulticastSocket

MulticastSocket
多播套接字，参见java.net包

StreamClient
发送TCP流请求消息的服务

public interface StreamClient<C extends StreamClientConfiguration> {
    StreamResponseMessage sendRequest(StreamRequestMessage message);
    
    void stop();
    
    C getConfiguration();
}
StreamClientImpl
StreamServer
接收TCP流的服务，每个IP一个，该服务在一个套接字上监听TCP连接

public interface StreamServer<C extends StreamServerConfiguration> extends Runnable {

    void init(InetAddress bindAddress, Router router) throws InitializationException;

    int getPort();

    void stop();

    C getConfiguration();
}
StreamServerImpl
@Override
public void run() {

    while (!stopped) {
        try {
            // Block until we have a connection
            Socket clientSocket = serverSocket.accept();
            if (HTTPServerData.HOST != null && !clientSocket.getInetAddress().getHostAddress().equals(HTTPServerData.HOST) && !configuration.isExported()) {
                clientSocket.close();
                continue;
            }
            // We have to force this fantastic library to accept HTTP
            // methods which are not in the holy RFCs.
            DefaultHttpServerConnection httpServerConnection = new DefaultHttpServerConnection() {
                @Override
                protected HttpRequestFactory createHttpRequestFactory() {
                    return new UpnpHttpRequestFactory();
                }
            };

            httpServerConnection.bind(clientSocket, globalParams);
            // Wrap the processing of the request in a UpnpStream
            UpnpStream connectionStream = new HttpServerConnectionUpnpStream(router.getProtocolFactory(), httpServerConnection, globalParams);

            router.received(connectionStream);
        } catch (InterruptedIOException ex) {
            break;
        } catch (SocketException ex) {
            if (!stopped) {

            } else {
            
            }
            break;
        } catch (IOException ex) {
            break;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    try {
        if (!serverSocket.isClosed()) {
            serverSocket.close();
        }
    } catch (Exception ex) {

    }
}
在循环中监听套接字，获得的UpnpStream交由Router.received()处理

UpnpStream
代表一个HTTP请求或响应的Runnable

public StreamResponseMessage process(StreamRequestMessage requestMsg) {
    try {
        // Try to get a protocol implementation that matches the request message
        syncProtocol = getProtocolFactory().createReceivingSync(requestMsg);
    } catch (ProtocolCreationException ex) {
        return new StreamResponseMessage(UpnpResponse.Status.NOT_IMPLEMENTED);
    }
    
    // Run it
    syncProtocol.run();
    
    // ... then grab the response
    StreamResponseMessage responseMsg = syncProtocol.getOutputMessage();
    
    if (responseMsg == null) {
        // That's ok, the caller is supposed to handle this properly (e.g. convert it to HTTP 404)
        return null;
    }	
    return responseMsg;
}
process()从StreamRequestMessage创建出一个ReceivingSync并执行，然后返回StreamResponseMessage

HttpExchangeUpnpStream
@Override
public void run() {
    //  构造StreamRequestMessage
    ......
    
    //  处理之
    StreamResponseMessage responseMessage = process(requestMessage);
    
    //  返回StreamResponseMessage
    ......
    ReceivingSync.responseSent()
}
MulticastReceiver
接受UDP数据报广播的服务，每个网络接口一个，该服务在一个套接字上监听UDP数据报，监听循环在run()中开始，任何接收的数据报然后被转化为IncomingDatagramMessage，然后被Router.received()处理

public interface MulticastReceiver<C extends MulticastReceiverConfiguration> extends Runnable {

    void init(NetworkInterface networkInterface, Router router, DatagramProcessor datagramProcessor) throws InitializationException;
    
    void stop();
    
    C getConfiguration();
}
MulticastReceiverImpl
一些流程
搜索设备(发送UDP数据报)
ControlPoint: 调用search()，即处理SendingSearch
Router: 循环调用send()
DatagramIO: 对每一个端口，调用send()，将消息封装成DatagramPacket
MulticastSocket: 调用send()
扩展看一下java.net包

发送命令(发送TCP数据流)
ControlPoint: 调用execute()，执行ActionCallback，即处理SendingActoin
Router: 调用send()
StreamClient: 调用sendRequest()
DefaultHttpClient: 调用execute()
接收UDP数据报
DatagramIO: 循环中在套接字上接收DatagramPacket，转换成IncomingDatagramMessage
Router: received()，创建一个ReceivingAsync并执行
ReceivingAsync: 执行execute()，由不同的子类分别处理，拿到对应的数据结构
接收TCP数据流
StreamServer: 循环中监听套接字，得到UpnpStream
Router: received()，其实就是执行这个UpnpStream
UpnpStream: 从StreamRequestMessage创建出一个ReceivingSync并执行，然后返回StreamResponseMessage
ReceivingSync: 执行executeSync()，由不同的子类分别处理，拿到对应的数据结构
# 开源库 # DLNA # Cling
AndroidWear开发心得
封装DLNA开源库
分享
文章目录  站点概览
1. Meta
2. GENASubscription
3. ControlPoint
4. ActionCallback
5. SubscriptionCallback
6. Registry
7. ProtocolFactory
8. SendingAsync
9. SOAPActionProcessor
10. ReceivingAsync
11. Router
11.1. RouterImpl
11.2. DatagramIO
11.3. StreamClient
11.4. StreamServer
11.4.1. StreamServerImpl
11.4.2. UpnpStream
11.4.2.1. HttpExchangeUpnpStream
11.5. MulticastReceiver
12. 一些流程
© 2014 - 2017  刘晗
由 Hexo 强力驱动  主题 - NexT.Mist
