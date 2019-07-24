



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Cling Core &#x2013; Cling Core User Manual</title>

                                                    
    <style>
    .tocitem.level_1 { margin-left: 1em; }
    .tocitem.level_2 { margin-left: 2em; }
    .tocitem.level_3 { margin-left: 3em; }
    .tocitem.level_4 { margin-left: 4em; }
    .chapter > .title { margin: 1em 0; font-size: 150%; font-weight: bold; }
    .title { margin: 1em 0; font-weight: bold; }
    .note { width: 80%; margin: 0 auto; background: #e0e0e0; padding: 1em; }
    pre { background: #efefef; }
    .project-coordinates { text-align: right; font-size: 90%; }
    </style>
 
</head>
<body>

<div id="project-menu-cling-core" class="project-menu">
        </div>

<div id="project-body">

    <div>
        <div xmlns="http://www.w3.org/1999/xhtml">
    <div class="manual">
        <div class="frontmatter">
            <h1>Cling Core</h1>
            <h2>User Manual</h2>
            <div class="authors">
                <h3>Authors:</h3>
                <div class="author">Christian Bauer</div>
            </div>
            <div class="tableofcontents">
                <h3>Table Of Contents:</h3>
                <div class="toc">
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">1.</span>
                        <a href="#chapter.GettingStarted">Getting Started</a>
                    </div>
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">2.</span>
                        <a href="#chapter.BinaryLight">A first UPnP service and control point</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.1.</span>
                        <a href="#section.SwitchPower">The SwitchPower service implementation</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.2.</span>
                        <a href="#section.BindingDevice">Binding a UPnP device</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.3.</span>
                        <a href="#section.BinaryLightServer">Running the server</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.4.</span>
                        <a href="#section.BinaryLightClient">Creating a control point</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.5.</span>
                        <a href="#section.BinaryLightExecuteAction">Executing an action</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.6.</span>
                        <a href="#section.BinaryLightStartingApp">Starting the application</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">2.7.</span>
                        <a href="#section.BinaryLightDebugApp">Debugging and logging</a>
                    </div>
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">3.</span>
                        <a href="#chapter.BasicAPI">The Cling Core API</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">3.1.</span>
                        <a href="#section.BasicAPI.UpnpService">Working with a UpnpService</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.1.1.</span>
                        <a href="#section.BasicAPI.UpnpService.Configuration">Customizing configuration settings</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.1.2.</span>
                        <a href="#section.BasicAPI.UpnpService.ProtocolFactory">The protocol factory</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.1.3.</span>
                        <a href="#section.BasicAPI.UpnpService.Router">Accessing low-level network services</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">3.2.</span>
                        <a href="#section.BasicAPI.ControlPoint">Client operations with ControlPoint</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.2.1.</span>
                        <a href="#javadoc.example.controlpoint.SearchExecuteTest">Searching the network</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.2.2.</span>
                        <a href="#javadoc.example.controlpoint.ActionInvocationTest">Invoking an action</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.2.3.</span>
                        <a href="#javadoc.example.controlpoint.EventSubscriptionTest">Receiving events from services</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">3.3.</span>
                        <a href="#section.BasicAPI.Registry">The Registry</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.3.1.</span>
                        <a href="#javadoc.example.registry.RegistryBrowseTest">Browsing the Registry</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">3.3.2.</span>
                        <a href="#javadoc.example.registry.RegistryListenerTest">Listening to registry changes</a>
                    </div>
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">4.</span>
                        <a href="#chapter.CreatingServices">Creating and binding services</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">4.1.</span>
                        <a href="#javadoc.example.localservice.BasicBindingTest">Annotating a service implementation</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.1.1.</span>
                        <a href="#javadoc.example.localservice.SwitchPowerAnnotatedClass">Mapping state variables</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.1.2.</span>
                        <a href="#javadoc.example.localservice.SwitchPowerNamedStateVariable">Explicitly naming related state variables</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.1.3.</span>
                        <a href="#javadoc.example.localservice.SwitchPowerExtraGetter">Getting an output value from another method</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.1.4.</span>
                        <a href="#javadoc.example.localservice.SwitchPowerBeanReturn">Getting output values from a JavaBean</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">4.2.</span>
                        <a href="#javadoc.example.localservice.EventProviderTest">Providing events on service state changes</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">4.3.</span>
                        <a href="#section.CreatingServices.ConvertingValues">Converting string action argument values</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.3.1.</span>
                        <a href="#javadoc.example.localservice.StringConvertibleTest">String value converters</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.3.2.</span>
                        <a href="#javadoc.example.localservice.EnumTest">Working with enums</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">4.4.</span>
                        <a href="#section.CreatingServices.AllowedValues">Restricting allowed state variable values</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.4.1.</span>
                        <a href="#javadoc.example.localservice.AllowedValueTest">Exclusive list of string values</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">4.4.2.</span>
                        <a href="#javadoc.example.localservice.AllowedValueRangeTest">Restricting numeric value ranges</a>
                    </div>
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">5.</span>
                        <a href="#chapter.Android">Cling on Android</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">5.1.</span>
                        <a href="#section.Android.ConfiguringService">Configuring the application service</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">5.2.</span>
                        <a href="#section.Android.BindService">Accessing the service from an activity</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">5.3.</span>
                        <a href="#section.Android.LocalDevice">Creating a UPnP device</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">5.4.</span>
                        <a href="#section.Android.Optimize">Optimizing service behavior</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">5.4.1.</span>
                        <a href="#section.Android.Optimize.MaintainRegistry">Tuning registry maintenance</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">5.4.2.</span>
                        <a href="#section.Android.Optimize.PauseRegistry">Pausing and resuming registry maintenance</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">5.4.3.</span>
                        <a href="#section.Android.Optimize.Discovery">Configuring discovery</a>
                    </div>
                    <div class="tocitem level_1 level_chapter">
                        <span class="prefix">6.</span>
                        <a href="#chapter.Advanced">Advanced options</a>
                    </div>
                    <div class="tocitem level_2 level_chapter">
                        <span class="prefix">6.1.</span>
                        <a href="#chapter.ClientInfo">Custom client/server information</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.1.1.</span>
                        <a href="#section.ExtraRequestHeaders">Adding extra request headers</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.1.2.</span>
                        <a href="#javadoc.example.localservice.RemoteClientInfoTest">Accessing remote client information</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">6.2.</span>
                        <a href="#section.LongRunningActions">Long-running actions</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.2.1.</span>
                        <a href="#javadoc.example.controlpoint.ActionCancellationTest">Cancelling an action invocation</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.2.2.</span>
                        <a href="#javadoc.example.controlpoint.SwitchPowerWithInterruption">Reacting to cancellation on the server</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">6.3.</span>
                        <a href="#section.SwitchingXMLDescriptorBinders">Switching XML descriptor binders</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">6.4.</span>
                        <a href="#section.SwitchingXMLProcessors">Switching XML processors</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">6.5.</span>
                        <a href="#section.DiscoveryProblems">Solving discovery problems</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.5.1.</span>
                        <a href="#section.RemoteMaxAge">Maximum age of remote devices</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.5.2.</span>
                        <a href="#section.AliveInterval">Alive messages at regular intervals</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.5.3.</span>
                        <a href="#section.DiscoveryOptions">Using discovery options for local devices</a>
                    </div>
                    <div class="tocitem level_3 level_section">
                        <span class="prefix">6.5.4.</span>
                        <a href="#section.ManualAdvertisement">Manual advertisement of local devices</a>
                    </div>
                    <div class="tocitem level_2 level_section">
                        <span class="prefix">6.6.</span>
                        <a href="#section.ConfiguringTransports">Configuring network transports</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="chapter" id="chapter.GettingStarted">
            <div class="title">1. Getting Started</div>
            <div class="content">
                <p>
            This is how you use Cling:
        </p>
                <div>
                    <pre class="prettyprint"><![CDATA[package ...;

import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;

/**
 * Runs a simple UPnP discovery procedure.
 */
public class Main {

    public static void main(String[] args) throws Exception {

        // UPnP discovery is asynchronous, we need a callback
        RegistryListener listener = new RegistryListener() {

            public void remoteDeviceDiscoveryStarted(Registry registry,
                                                     RemoteDevice device) {
                System.out.println(
                        "Discovery started: " + device.getDisplayString()
                );
            }

            public void remoteDeviceDiscoveryFailed(Registry registry,
                                                    RemoteDevice device,
                                                    Exception ex) {
                System.out.println(
                        "Discovery failed: " + device.getDisplayString() + " => " + ex
                );
            }

            public void remoteDeviceAdded(Registry registry, RemoteDevice device) {
                System.out.println(
                        "Remote device available: " + device.getDisplayString()
                );
            }

            public void remoteDeviceUpdated(Registry registry, RemoteDevice device) {
                System.out.println(
                        "Remote device updated: " + device.getDisplayString()
                );
            }

            public void remoteDeviceRemoved(Registry registry, RemoteDevice device) {
                System.out.println(
                        "Remote device removed: " + device.getDisplayString()
                );
            }

            public void localDeviceAdded(Registry registry, LocalDevice device) {
                System.out.println(
                        "Local device added: " + device.getDisplayString()
                );
            }

            public void localDeviceRemoved(Registry registry, LocalDevice device) {
                System.out.println(
                        "Local device removed: " + device.getDisplayString()
                );
            }

            public void beforeShutdown(Registry registry) {
                System.out.println(
                        "Before shutdown, the registry has devices: "
                        + registry.getDevices().size()
                );
            }

            public void afterShutdown() {
                System.out.println("Shutdown of registry complete!");

            }
        };

        // This will create necessary network resources for UPnP right away
        System.out.println("Starting Cling...");
        UpnpService upnpService = new UpnpServiceImpl(listener);

        // Send a search message to all devices and services, they should respond soon
        upnpService.getControlPoint().search(new STAllHeader());

        // Let's wait 10 seconds for them to respond
        System.out.println("Waiting 10 seconds before shutting down...");
        Thread.sleep(10000);

        // Release all resources and advertise BYEBYE to other UPnP devices
        System.out.println("Stopping Cling...");
        upnpService.shutdown();
    }
}]]></pre>
                </div>
                <p>
            You need <code>cling-core.jar</code> and its dependencies (<code>seamless-*.jar</code>
            files) on your classpath to build and run this code.
        </p>
            </div>
        </div>
        <div xmlns:xi="http://www.w3.org/2001/XInclude" class="chapter" id="chapter.BinaryLight">
            <div class="title">2. A first UPnP service and control point</div>
            <div class="content">
                <p>
            The most basic UPnP service imaginable is the <em>binary light</em>. This device has one service,
            the power switch, turning the light on and off. In fact, the <em>SwitchPower:1</em> service and
            the <em>BinaryLight:1</em> device are standardized templates you can download
            <a href="http://www.upnp.org/resources/documents.asp">here</a>.
        </p>
                <p>
            In the following sections we'll implement this UPnP service and device with
            the Cling Core library as a simple Java console application.
        </p>
                <div class="section" id="section.SwitchPower">
                    <div class="title">2.1. The SwitchPower service implementation</div>
                    <div class="content">
                        <p>
            This is the source of the <em>SwitchPower:1</em> service - note that although there
            are many annotations in the source, no runtime dependency on Cling exists:
        </p>
                        <div class="citation javacode" id="javacode.example.binarylight.SwitchPower">
                            <div class="content">
                                <pre class="prettyprint">package example.binarylight;

import org.fourthline.cling.binding.annotations.*;

@UpnpService(
        serviceId = @UpnpServiceId("SwitchPower"),
        serviceType = @UpnpServiceType(value = "SwitchPower", version = 1)
)
public class SwitchPower {

    @UpnpStateVariable(defaultValue = "0", sendEvents = false)
    private boolean target = false;

    @UpnpStateVariable(defaultValue = "0")
    private boolean status = false;

    @UpnpAction
    public void setTarget(@UpnpInputArgument(name = "NewTargetValue")
                          boolean newTargetValue) {
        target = newTargetValue;
        status = newTargetValue;
        System.out.println("Switch is: " + status);
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "RetTargetValue"))
    public boolean getTarget() {
        return target;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "ResultStatus"))
    public boolean getStatus() {
        // If you want to pass extra UPnP information on error:
        // throw new ActionException(ErrorCode.ACTION_NOT_AUTHORIZED);
        return status;
    }

}
</pre>
                            </div>
                        </div>
                        <p>
            To compile this class the Cling Core library has to be available on your
            classpath. However, once compiled this class can be instantiated and executed in any
            environment, there are no dependencies on any framework or library code.
        </p>
                        <p>
            The annotations are used by Cling to read the metadata that describes your service, what
            UPnP state variables it has, how they are accessed, and what methods should be exposed
            as UPnP actions. You can also provide Cling metadata in an XML file or programmatically through
            Java code - both options are discussed later in this manual. Source code annotations are
            usually the best choice.
        </p>
                        <p>
            You might have expected something even simpler: After all, a <em>binary light</em> only
            needs a single boolean state, it is either on or off. The designers of this service also
            considered that there might be a difference between switching the light on, and actually
            seeing the result of that action. Imagine what happens if the light bulb is broken: The
            target state of the light is set to <em>true</em> but the status is still <em>false</em>,
            because the <em>SetTarget</em> action could not make the switch. Obviously this won't be
            a problem with this simple demonstration because it only prints the status to standard
            console output.
        </p>
                    </div>
                </div>
                <div class="section" id="section.BindingDevice">
                    <div class="title">2.2. Binding a UPnP device</div>
                    <div class="content">
                        <p>
            Devices (and embedded devices) are created programmatically in Cling, with plain Java
            code that instantiates an immutable graph of objects. The following method creates such a device
            graph and binds the service from the previous section to the root device:
        </p>
                        <div class="citation javacode" id="javacode.example.binarylight.BinaryLightServer.createDevice..">
                            <div class="content">
                                <pre class="prettyprint">LocalDevice createDevice()
        throws ValidationException, LocalServiceBindingException, IOException {

    DeviceIdentity identity =
            new DeviceIdentity(
                    UDN.uniqueSystemIdentifier("Demo Binary Light")
            );

    DeviceType type =
            new UDADeviceType("BinaryLight", 1);

    DeviceDetails details =
            new DeviceDetails(
                    "Friendly Binary Light",
                    new ManufacturerDetails("ACME"),
                    new ModelDetails(
                            "BinLight2000",
                            "A demo light with on/off switch.",
                            "v1"
                    )
            );

    Icon icon =
            new Icon(
                    "image/png", 48, 48, 8,
                    getClass().getResource("icon.png")
            );

    LocalService&lt;SwitchPower&gt; switchPowerService =
            new AnnotationLocalServiceBinder().read(SwitchPower.class);

    switchPowerService.setManager(
            new DefaultServiceManager(switchPowerService, SwitchPower.class)
    );

    return new LocalDevice(identity, type, details, icon, switchPowerService);

    /* Several services can be bound to the same device:
    return new LocalDevice(
            identity, type, details, icon,
            new LocalService[] {switchPowerService, myOtherService}
    );
    */
    
}
</pre>
                            </div>
                        </div>
                        <p>
            Let's step through this code. As you can see, all arguments that make up the device's metadata
            have to be provided through constructors, because the metadata classes are immutable and hence
            thread-safe.
        </p>
                        <dl>
                            <dt>DeviceIdentity</dt>
                            <dd>
                                <p>
                    Every device, no matter if it is a root device or an embedded device of a root device,
                    requires a unique device name (UDN). This UDN should be stable, that is, it should not
                    change when the device is restarted. When you physically unplug a UPnP appliance from the
                    network (or when you simply turn it off or put it into standby mode), and when you make
                    it available later on, it should expose the same UDN so that clients know they are dealing
                    with the same device. The <code>UDN.uniqueSystemIdentifier()</code> method provides exactly
                    that: A unique identifier that is the same every time this method is called on the same
                    computer system. It hashes the network cards hardware address and a few other
                    elements to guarantee uniqueness and stability.
                </p>
                            </dd>
                            <dt>DeviceType</dt>
                            <dd>
                                <p>
                    The type of a device also includes its version, a plain integer. In this case the
                    <em>BinaryLight:1</em> is a standardized device template which adheres to the UDA (UPnP
                    Device Architecture) specification.
                </p>
                            </dd>
                            <dt>DeviceDetails</dt>
                            <dd>
                                <p>
                    This detailed information about the device's "friendly name", as well as model and manufacturer
                    information is optional. You should at least provide a friendly name value, this is what UPnP
                    applications will display primarily.
                </p>
                            </dd>
                            <dt>Icon</dt>
                            <dd>
                                <p>
                    Every device can have a bunch of icons associated with it which similar to the friendly name
                    are shown to users when appropriate. You do not have to provide any icons if you don't want to,
                    use a constructor of <code>LocalDevice</code> without an icon parameter.
                </p>
                            </dd>
                            <dt>Service</dt>
                            <dd>
                                <p>
                    Finally, the most important part of the device are its services. Each <code>Service</code>
                    instance encapsulates the metadata for a particular service, what actions and state variables it has,
                    and how it can be invoked. Here we use the Cling annotation binder to
                    instantiate a <code>Service</code>, reading the annotation metadata of the
                    <code>SwitchPower</code> class.
                </p>
                            </dd>
                        </dl>
                        <p>
            Because a <code>Service</code> instance is only metadata that describes the service, you
            have to set a <code>ServiceManager</code> to do some actual work. This is the link between the
            metadata and your implementation of a service, where the rubber meets the road.
            The <code>DefaultServiceManager</code> will instantiate the given <code>SwitchPower</code>
            class when an action which operates on the service has to be executed (this happens lazily,
            as late as possible). The manager will hold on to the instance and always re-use it as long
            as the service is registered with the UPnP stack. In other words, the service manager is the
            factory that instantiates your actual implementation of a UPnP service.
        </p>
                        <p>
            Also note that <code>LocalDevice</code> is the interface that represents a UPnP device which is
            "local" to the running UPnP stack on the host. Any device that has been discovered through the network
            will be a <code>RemoteDevice</code> with <code>RemoteService</code>'s, you typically do not
            instantiate these directly.
        </p>
                        <p>
            A <code>ValidationException</code> will be thrown when the device graph you instantiated was invaild,
            you can call <code>getErrors()</code> on the exception to find out which property value of which
            class failed an integrity rule. The local service annotation binder will provide a
            <code>LocalServiceBindingException</code> if something is wrong with your
            annotation metadata on your service implementation class. An <code>IOException</code> can only
            by thrown by this particular <code>Icon</code> constructor, when it reads the resource file.
        </p>
                    </div>
                </div>
                <div class="section" id="section.BinaryLightServer">
                    <div class="title">2.3. Running the server</div>
                    <div class="content">
                        <p>
            The Cling Core main API entry point is a thread-safe and typically single shared instance of
            <code>UpnpService</code>:
        </p>
                        <div class="citation javacode" id="javacode.example.binarylight.BinaryLightServer">
                            <div class="content">
                                <pre class="prettyprint">package example.binarylight;

import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceImpl;
import org.fourthline.cling.binding.*;
import org.fourthline.cling.binding.annotations.*;
import org.fourthline.cling.model.*;
import org.fourthline.cling.model.meta.*;
import org.fourthline.cling.model.types.*;

import java.io.IOException;

public class BinaryLightServer implements Runnable {

    public static void main(String[] args) throws Exception {
        // Start a user thread that runs the UPnP stack
        Thread serverThread = new Thread(new BinaryLightServer());
        serverThread.setDaemon(false);
        serverThread.start();
    }

    public void run() {
        try {

            final UpnpService upnpService = new UpnpServiceImpl();

            Runtime.getRuntime().addShutdownHook(new Thread() {
                @Override
                public void run() {
                    upnpService.shutdown();
                }
            });

            // Add the bound local device to the registry
            upnpService.getRegistry().addDevice(
                    createDevice()
            );

        } catch (Exception ex) {
            System.err.println("Exception occured: " + ex);
            ex.printStackTrace(System.err);
            System.exit(1);
        }
    }

}
</pre>
                            </div>
                        </div>
                        <p>
            (The <code>createDevice()</code> method from the previous section should be added to this class.)
        </p>
                        <p>
            As soon as the <code>UPnPServiceImpl</code> is created, the stack is up and running. You always
            have to create a <code>UPnPService</code> instance, no matter if you write a client or a server.
            The <code>UpnpService</code> maintains a registry of all the discovered remote device on the network,
            and all the bound local devices. It manages advertisements for discovery and event handling
            in the background.
        </p>
                        <p>
            You should shut down the UPnP service properly when your application quits, so that all
            other UPnP systems on your network will be notified that bound devices which are local to your
            application are no longer available. If you do not shut down the <code>UpnpService</code>
            when your application quits, other UPnP control points on your network might still show devices
            as available when they are in fact already gone.
        </p>
                        <p>
            The <code>createDevice()</code> method from the previous section is called here, as soon as the
            <code>Registry</code> of the local UPnP service stack is available.
        </p>
                        <p>
            You can now compile and start this server, it should print some informational messages to your
            console and then wait for connections from UPnP control points. Use the
            <a href="http://4thline.org/projects/cling/workbench/">Cling Workbench</a> if you want to test your
            server immediately.
        </p>
                    </div>
                </div>
                <div class="section" id="section.BinaryLightClient">
                    <div class="title">2.4. Creating a control point</div>
                    <div class="content">
                        <p>
            The client application has the same basic scaffolding as the server, it also uses a
            shared single instance of <code>UpnpService</code>:
        </p>
                        <div class="citation javacode" id="javacode.example.binarylight.BinaryLightClient">
                            <div class="content">
                                <pre class="prettyprint">package example.binarylight;

import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceImpl;
import org.fourthline.cling.controlpoint.*;
import org.fourthline.cling.model.action.*;
import org.fourthline.cling.model.message.*;
import org.fourthline.cling.model.message.header.*;
import org.fourthline.cling.model.meta.*;
import org.fourthline.cling.model.types.*;
import org.fourthline.cling.registry.*;

public class BinaryLightClient implements Runnable {

    public static void main(String[] args) throws Exception {
        // Start a user thread that runs the UPnP stack
        Thread clientThread = new Thread(new BinaryLightClient());
        clientThread.setDaemon(false);
        clientThread.start();

    }

    public void run() {
        try {

            UpnpService upnpService = new UpnpServiceImpl();

            // Add a listener for device registration events
            upnpService.getRegistry().addListener(
                    createRegistryListener(upnpService)
            );

            // Broadcast a search message for all devices
            upnpService.getControlPoint().search(
                    new STAllHeader()
            );

        } catch (Exception ex) {
            System.err.println("Exception occured: " + ex);
            System.exit(1);
        }
    }

}
</pre>
                            </div>
                        </div>
                        <p>
            Typically a control point sleeps until a device with a specific type of service becomes
            available on the network. The <code>RegistryListener</code> is called by Cling when a
            remote device has been discovered - or when it announced itself automatically. Because you
            usually do not want to wait for the periodic announcements of devices, a control point
            can also execute a search for all devices (or devices with certain service types or UDN),
            which will trigger an immediate discovery announcement from those devices that match
            the search query.
        </p>
                        <p>
            You can already see the <code>ControlPoint</code> API here with its <code>search(...)</code>
            method, this is one of the main interfaces you interact with when writing a UPnP client with
            Cling.
        </p>
                        <p>
            If you compare this code with the server code from the previous section you can see
            that we are not shutting down the <code>UpnpService</code> when the application quits. This
            is not an issue here, because this application does not have any local devices or service
            event listeners (not the same as registry listeners) bound and registered. Hence, we
            do not have to announce their departure on application shutdown and can keep the
            code simple for the sake of the example.
        </p>
                        <p>
            Let's focus on the registry listener implementation and what happens when a UPnP device has
            been discovered on the network.
        </p>
                    </div>
                </div>
                <div class="section" id="section.BinaryLightExecuteAction">
                    <div class="title">2.5. Executing an action</div>
                    <div class="content">
                        <p>
            The control point we are creating here is only interested in services that implement
            <em>SwitchPower</em>. According to its template definition this service has the
            <code>SwitchPower</code> service identifier, so when a device has been discovered we
            can check if it offers that service:
        </p>
                        <div class="citation javacode" id="javacode.example.binarylight.BinaryLightClient.createRegistryListener.UpnpService.">
                            <div class="content">
                                <pre class="prettyprint">RegistryListener createRegistryListener(final UpnpService upnpService) {
    return new DefaultRegistryListener() {

        ServiceId serviceId = new UDAServiceId("SwitchPower");

        @Override
        public void remoteDeviceAdded(Registry registry, RemoteDevice device) {

            Service switchPower;
            if ((switchPower = device.findService(serviceId)) != null) {

                System.out.println("Service discovered: " + switchPower);
                executeAction(upnpService, switchPower);

            }

        }

        @Override
        public void remoteDeviceRemoved(Registry registry, RemoteDevice device) {
            Service switchPower;
            if ((switchPower = device.findService(serviceId)) != null) {
                System.out.println("Service disappeared: " + switchPower);
            }
        }

    };
}
</pre>
                            </div>
                        </div>
                        <p>
            If a service becomes available we immediately execute an action on that service. When a
            <code>SwitchPower</code> device disappears from the network a log message is printed.
            Remember that this is a very trivial control point, it executes a single a fire-and-forget
            operation when a service becomes available:
        </p>
                        <div class="citation javacode" id="BinaryLightClient.executeAction">
                            <div class="content">
                                <pre class="prettyprint">void executeAction(UpnpService upnpService, Service switchPowerService) {

        ActionInvocation setTargetInvocation =
                new SetTargetActionInvocation(switchPowerService);

        // Executes asynchronous in the background
        upnpService.getControlPoint().execute(
                new ActionCallback(setTargetInvocation) {

                    @Override
                    public void success(ActionInvocation invocation) {
                        assert invocation.getOutput().length == 0;
                        System.out.println("Successfully called action!");
                    }

                    @Override
                    public void failure(ActionInvocation invocation,
                                        UpnpResponse operation,
                                        String defaultMsg) {
                        System.err.println(defaultMsg);
                    }
                }
        );

}

class SetTargetActionInvocation extends ActionInvocation {

    SetTargetActionInvocation(Service service) {
        super(service.getAction("SetTarget"));
        try {

            // Throws InvalidValueException if the value is of wrong type
            setInput("NewTargetValue", true);

        } catch (InvalidValueException ex) {
            System.err.println(ex.getMessage());
            System.exit(1);
        }
    }
}
</pre>
                            </div>
                        </div>
                        <p>
            The <code>Action</code> (metadata) and the <code>ActionInvocation</code> (actual call data) APIs
            allow very fine-grained control of how an invocation is prepared, how input values are set,
            how the action is executed, and how the output and outcome is handled. UPnP is inherently
            asynchronous, so just like the registry listener, executing an action is exposed to you
            as a callback-style API.
        </p>
                        <p>
            It is recommended that you encapsulate specific action invocations within a subclass of
            <code>ActionInvocation</code>, which gives you an opportunity to further abstract the input
            and output values of an invocation. Note however that an instance of <code>ActionInvocation</code>
            is not thread-safe and should not be executed in parallel by two threads.
        </p>
                        <p>
            The <code>ActionCallback</code> has two main methods you have to implement, one is called
            when the execution was successful, the other when it failed. There are many reasons why an
            action execution might fail, read the API documentation for all possible combinations or
            just print the generated user-friendly default error message.
        </p>
                    </div>
                </div>
                <div class="section" id="section.BinaryLightStartingApp">
                    <div class="title">2.6. Starting the application</div>
                    <div class="content">
                        <p>
            Compile the binary light demo application:
        </p>
                        <div>
                            <pre><![CDATA[$ javac -cp /path/to/seamless-jar-files:/path/to/cling-core.jar \
        -d classes/ \
        src/example/binarylight/BinaryLightServer.java \
        src/example/binarylight/BinaryLightClient.java \
        src/example/binarylight/SwitchPower.java]]></pre>
                        </div>
                        <p>
            Don't forget to copy your <code>icon.png</code> file into the <code>classes</code> output
            directory as well, into the right package from which it is loaded as a reasource (the
            <code>example.binarylight</code> package if you followed the previous sections verbatim).
        </p>
                        <p>
            You can start the server or client first, which one doesn't matter as they will
            discover each other automatically:
        </p>
                        <div>
                            <pre><![CDATA[$ java -cp /path/to/seamless-jar-files:/path/to/cling-core.jar:classes/ \
        example.binaryLight.BinaryLightServer]]></pre>
                        </div>
                        <div>
                            <pre><![CDATA[$ java -cp /path/to/seamless-jar-files:/path/to/cling-core.jar:classes/ \
        example.binaryLight.BinaryLightClient]]></pre>
                        </div>
                        <p>
            You should see discovery and action execution messages on each console. You can stop
            and restart the applications individually (press CTRL+C on the console).
        </p>
                    </div>
                </div>
                <div class="section" id="section.BinaryLightDebugApp">
                    <div class="title">2.7. Debugging and logging</div>
                    <div class="content">
                        <p>
            Although the binary light is a very simple example, you might run into problems. Cling Core
            helps you resolve most problems with extensive logging. Internally, Cling Core uses Java JDK logging,
            also known as <code>java.util.logging</code> or JUL. There are no wrappers, logging frameworks,
            logging services, or other dependencies.
        </p>
                        <p>
            By default, the implementation of JUL in the Sun JDK will print only messages with level
            INFO, WARNING, or SEVERE on <code>System.out</code>, and it will print each message over two
            lines. This is quite inconvenient and ugly, so your first step is probably to configure one
            line per message. This requires a custom logging handler.
        </p>
                        <p>
            Next you want to configure logging levels for different logging categories. Cling Core will
            output some INFO level messages on startup and shutdown, but is otherwise silent during runtime
            unless a problem occurs - it will then log messages at WARNING or SEVERE level.
        </p>
                        <p>
            For debugging, usually more detailed logging levels for various log categories are required.
            The logging categories in Cling Core are package names, e.g the root logger is available under
            the name <code>org.fourthline.cling</code>. The following tables show typically used categories and the
            recommended level for debugging:
        </p>
                        <table border="1" class="infotable fullwidth">
                            <thead>
                                <tr>
                                    <th>Network/Transport</th>
                                    <th class="thirdwidth"> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.spi.DatagramIO (FINE)</code>
                                        <br/>
                                        <code>org.fourthline.cling.transport.spi.MulticastReceiver (FINE)</code>
                                        <br/>
                                    </td>
                                    <td>UDP communication</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.spi.DatagramProcessor (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>UDP datagram processing and content</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.spi.UpnpStream (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.transport.spi.StreamServer (FINE)</code>
                                        <br/>
                                        <code>org.fourthline.cling.transport.spi.StreamClient (FINE)</code>
                                        <br/>
                                    </td>
                                    <td>TCP communication</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.spi.SOAPActionProcessor (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>SOAP action message processing and content</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.spi.GENAEventProcessor (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>GENA event message processing and content</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.impl.HttpHeaderConverter (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>HTTP header processing</td>
                                </tr>
                            </tbody>
                        </table>
                        <br/>
                        <table border="1" class="infotable fullwidth">
                            <thead>
                                <tr>
                                    <th>UPnP Protocol</th>
                                    <th class="thirdwidth"> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.protocol.ProtocolFactory (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.async (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>Discovery (Notification &amp; Search)</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.protocol.ProtocolFactory (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.RetrieveRemoteDescriptors (FINE)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.ReceivingRetrieval (FINE)</code>
                                        <br/>
                                        <code>org.fourthline.cling.binding.xml.DeviceDescriptorBinder (FINE)</code>
                                        <br/>
                                        <code>org.fourthline.cling.binding.xml.ServiceDescriptorBinder (FINE)</code>
                                        <br/>
                                    </td>
                                    <td>Description</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.protocol.ProtocolFactory (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.ReceivingAction (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.SendingAction (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>Control</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.model.gena (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.ProtocolFactory (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.ReceivingEvent (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.ReceivingSubscribe (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.ReceivingUnsubscribe (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.SendingEvent (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.SendingSubscribe (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.SendingUnsubscribe (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.protocol.sync.SendingRenewal (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>GENA</td>
                                </tr>
                            </tbody>
                        </table>
                        <br/>
                        <table border="1" class="infotable fullwidth">
                            <thead>
                                <tr>
                                    <th>Core</th>
                                    <th class="thirdwidth"> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.transport.Router (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>
                    Message Router
                </td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.registry.Registry (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.registry.LocalItems (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.registry.RemoteItems (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>Registry</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.binding.annotations (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.model.meta.LocalService (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.model.action (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.model.state (FINER)</code>
                                        <br/>
                                        <code>org.fourthline.cling.model.DefaultServiceManager (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>Local service binding &amp; invocation</td>
                                </tr>
                                <tr>
                                    <td class="nowrap">
                                        <code>org.fourthline.cling.controlpoint (FINER)</code>
                                        <br/>
                                    </td>
                                    <td>Control Point interaction</td>
                                </tr>
                            </tbody>
                        </table>
                        <p>
            One way to configure JUL is with a properties file. For example, create
            the following file as <code>mylogging.properties</code>:
        </p>
                        <div>
                            <pre><![CDATA[# Enables a one-message-per-line handler (shipping in seamless-util.jar)
handlers=org.seamless.util.logging.SystemOutLoggingHandler

# The default (root) log level
.level=INFO

# Extra settings for various categories

org.fourthline.cling.level=INFO

org.fourthline.cling.protocol.level=FINEST

org.fourthline.cling.registry.Registry.level=FINER
org.fourthline.cling.registry.LocalItems.level=FINER
org.fourthline.cling.registry.RemoteItems.level=FINER ]]></pre>
                        </div>
                        <p>
            You can now start your application with a system property that names your logging
            configuration:
        </p>
                        <div>
                            <pre><![CDATA[$ java -cp /path/to/seamless-jar-files:/path/to/cling-core.jar:classes/ \
        -Djava.util.logging.config.file=/path/to/mylogging.properties \
        example.binaryLight.BinaryLightServer]]></pre>
                        </div>
                        <p>
            You should see the desired log messages printed on <code>System.out</code>.
        </p>
                    </div>
                </div>
            </div>
        </div>
        <div xmlns:xi="http://www.w3.org/2001/XInclude" class="chapter" id="chapter.BasicAPI">
            <div class="title">3. The Cling Core API</div>
            <div class="content">
                <p>
            The programming interface of Cling is fundamentally the same for UPnP clients and servers. The single
            entry point for any program is the <code>UpnpService</code> instance. Through this API you access
            the local UPnP stack, and either execute operations as a client (control point) or provide services
            to local or remote clients through the registry.
        </p>
                <p>
            The following diagram shows the most important interfaces of Cling Core:
        </p>
                <img alt="API Overview" src="img/api_overview.png" style="display:block; margin-left: auto; margin-right:auto;"/>
                <p>
            You'll be calling these interfaces to work with UPnP devices and interact with UPnP services. Cling
            provides a fine-grained meta-model representing these artifacts:
        </p>
                <img alt="Metamodel Overview" src="img/metamodel_overview.png" style="display:block; margin-left: auto; margin-right:auto;"/>
                <p>
            In this chapter we'll walk through the API and metamodel in more detail, starting with the <code>UpnpService</code>.
        </p>
                <div class="section" id="section.BasicAPI.UpnpService">
                    <div class="title">3.1. Working with a UpnpService</div>
                    <div class="content">
                        <p>
            The <code>UpnpService</code> is an interface:
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[public interface UpnpService {

    public UpnpServiceConfiguration getConfiguration();
    public ProtocolFactory getProtocolFactory();
    public Router getRouter();

    public ControlPoint getControlPoint();
    public Registry getRegistry();

    public void shutdown();

}]]></pre>
                        </div>
                        <p>
            An instance of <code>UpnpService</code> represents a running UPnP stack, including
            all network listeners, background maintenance threads, and so on. Cling Core bundles a default
            implementation which you can simply instantiate as follows:
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[UpnpService upnpService = new UpnpServiceImpl();]]></pre>
                        </div>
                        <p>
            With this implementation, the local UPnP stack is ready immediately, it listens on the network for
            UPnP messages. You should call the <code>shutdown()</code> method when you no longer need the UPnP stack.
            The bundled implementation will then cut all connections with remote event listeners and also notify all
            other UPnP participants on the network that your local services are no longer available. If you do
            not shutdown your UPnP stack, remote control points might think that your services are still available
            until your earlier announcements expire.
        </p>
                        <p>
            The bundled implementation offers two additional constructors:
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[UpnpService upnpService =
    new UpnpServiceImpl(RegistryListener... registryListeners);]]></pre>
                        </div>
                        <p>
            This constructor accepts your custom <code>RegistryListener</code> instances, which will be activated
            immediately even before the UPnP stack listens on any network interface. This means that you can be
            notified of <em>all</em> incoming device and service registrations as soon as the network stack is ready.
            Note that this is rarely useful, you'd typically send search requests after the stack is up and running
            anyway - after adding listeners to the registry.
        </p>
                        <p>
            The second constructor supports customization of the UPnP stack configuration:
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[UpnpService upnpService =
    new UpnpServiceImpl(new DefaultUpnpServiceConfiguration(8081));]]></pre>
                        </div>
                        <p>
            This example configuration will change the TCP listening port of the UPnP stack to <code>8081</code>,
            the default being an ephemeral (system-selected free) port. The <code>UpnpServiceConfiguration</code>
            is also an interface, in the example above you can see how the bundled default implementation
            is instantiated.
        </p>
                        <p>
            The following section explain the methods of the <code>UpnpService</code> interface and what
            they return in more detail.
        </p>
                        <div class="section" id="section.BasicAPI.UpnpService.Configuration">
                            <div class="title">3.1.1. Customizing configuration settings</div>
                            <div class="content">
                                <p>
                    This is the configuration interface of the default UPnP stack in Cling Core, an instance of
                    which you have to provide when creating the <code>UpnpServiceImpl</code>:
                </p>
                                <div>
                                    <pre class="prettyprint"><![CDATA[public interface UpnpServiceConfiguration {

    // NETWORK
    public NetworkAddressFactory createNetworkAddressFactory();

    public StreamClient createStreamClient();
    public StreamServer createStreamServer(NetworkAddressFactory naf);

    public MulticastReceiver createMulticastReceiver(NetworkAddressFactory naf);
    public DatagramIO createDatagramIO(NetworkAddressFactory naf);

    // PROCESSORS
    public DatagramProcessor getDatagramProcessor();
    public SOAPActionProcessor getSoapActionProcessor();
    public GENAEventProcessor getGenaEventProcessor();

    // DESCRIPTORS
    public DeviceDescriptorBinder getDeviceDescriptorBinderUDA10();
    public ServiceDescriptorBinder getServiceDescriptorBinderUDA10();

    // EXECUTORS
    public Executor getMulticastReceiverExecutor();
    public Executor getDatagramIOExecutor();
    public Executor getStreamServerExecutor();
    public Executor getAsyncProtocolExecutor();
    public Executor getSyncProtocolExecutor();
    public Executor getRegistryMaintainerExecutor();
    public Executor getRegistryListenerExecutor();

    // REGISTRY
    public Namespace getNamespace();
    public int getRegistryMaintenanceIntervalMillis();
    ...

}]]></pre>
                                </div>
                                <p>
                    This is quite an extensive SPI but you typically won't implement it from scratch. Overriding
                    and customizing the bundled <code>DefaultUpnpServiceConfiguration</code> should suffice in most
                    cases.
                </p>
                                <p>
                    The configuration settings reflect the internal structure of Cling Core:
                </p>
                                <dl>
                                    <dt>Network</dt>
                                    <dd>
                                        <p>
                            The <code>NetworkAddressFactory</code> provides the network interfaces, ports, and
                            multicast settings which are used by the UPnP stack. At the time of writing, the following
                            interfaces and IP addresses are ignored by the default configuration: any IPv6 interfaces
                            and addresses, interfaces whose name is "vmnet*", "vnic*", "vboxnet*", "*virtual*", or
                            "ppp*", and the local loopback. Otherwise, all interfaces and their TCP/IP addresses are
                            used and bound.
                        </p>
                                        <p>
                            You can set the system property <code>org.fourthline.cling.network.useInterfaces</code> to
                            provide a comma-separated list of network interfaces you'd like to bind exclusively.
                            Additionally, you can restrict the actual TCP/IP addresses to which the stack will
                            bind with a comma-separated list of IP address provided through the
                            <code>org.fourthline.cling.network.useAddresses</code> system property.
                        </p>
                                        <p>
                            Furthermore, the configuration produces the network-level message receivers and
                            senders, that is, the implementations used by the network <code>Router</code>.
                        </p>
                                        <p>
                            Stream messages are TCP/HTTP requests and responses, the default configuration
                            will use the Sun JDK 6.0 webserver to listen for HTTP requests, and it sends
                            HTTP requests with the standard JDK <code>HttpURLConnection</code>. This means
                            there are by default no additional dependencies on any HTTP server/library by Cling
                            Core. However, if you are trying to use Cling Core in a runtime container such as Tomcat,
                            JBoss AS, or Glassfish, you might run into an error on startup. The error tells you that
                            Cling couldn't use the Java JDK's <code>HTTPURLConnection</code> for HTTP client operations.
                            This is an old and badly designed part of the JDK: Only "one application" in the whole JVM
                            can configure URL connections. If your container is already using the
                            <code>HTTPURLConnection</code>, you have to switch Cling to an alternative HTTP client. See
                            <a href="#section.ConfiguringTransports">Configuring network transports</a> for other
                            available options and how to change various network-related settings.
                        </p>
                                        <p>
                            UDP unicast and multicast datagrams are received, parsed, and send by a custom
                            implementation bundled with Cling Core that does not require any particular Sun
                            JDK classes, they should work an all platforms and in any environment.
                        </p>
                                    </dd>
                                    <dt>Processors</dt>
                                    <dd>
                                        <p>
                            The payload of SSDP datagrams is handled by a default processor, you rarely have to
                            customize it. SOAP action and GENA event messages are also handled by configurable
                            processors,
                            you can provide alternative implementations if necessary, see
                            <a href="#section.SwitchingXMLProcessors">Switching XML processors</a>. For best
                            interoperability with other (broken) UPnP stacks, consider switching from the strictly
                            specification-compliant default SOAP and GENA processors to the more lenient alternatives.
                        </p>
                                    </dd>
                                    <dt>Descriptors</dt>
                                    <dd>
                                        <p>
                            Reading and writing UPnP XML device and service descriptors is handled by dedicated
                            binders, see <a href="#section.SwitchingXMLDescriptorBinders">Switching descriptor XML
                            binders</a>. For best interoperability with other (broken) UPnP stacks, consider switching
                            from the strictly specification-compliant default binders to the more lenient alternatives.
                        </p>
                                    </dd>
                                    <dt>Executors</dt>
                                    <dd>
                                        <p>
                            The Cling UPnP stack is multi-threaded, thread creation and execution is handled
                            through <code>java.util.concurrent</code> executors. The default configuration
                            uses a pool of threads with a maximum size of 64 concurrently running threads,
                            which should suffice for even very large installations. Executors can be
                            configured fine-grained, for network message handling, actual UPnP protocol
                            execution (handling discovery, control, and event procedures), and local
                            registry maintenance and listener callback execution. Most likely you will not
                            have to customize any of these settings.
                        </p>
                                    </dd>
                                    <dt>Registry</dt>
                                    <dd>
                                        <p>
                            Your local device and service XML descriptors and icons can be served with a given
                            <code>Namespace</code>, defining how the URL paths of local resources is constructed.
                            You can also configure how frequently Cling will check its <code>Registry</code> for
                            outdated devices and expired GENA subscriptions.
                        </p>
                                    </dd>
                                </dl>
                                <p>
                    There are various other, rarely needed, configuration options available for customizing Cling's
                    behavior, see the Javadoc of <code>UpnpConfiguration</code>.
                </p>
                            </div>
                        </div>
                        <div class="section" id="section.BasicAPI.UpnpService.ProtocolFactory">
                            <div class="title">3.1.2. The protocol factory</div>
                            <div class="content">
                                <p>
                    Cling Core internals are modular and any aspect of the UPnP protocol is handled by
                    an implementation (class) which can be replaced without affecting any other aspect.
                    The <code>ProtocolFactory</code> provides implementations, it is
                    always the first access point for the UPnP stack when a message which arrives on the
                    network or an outgoing message has to be handled:
                </p>
                                <div>
                                    <pre class="prettyprint"><![CDATA[public interface ProtocolFactory {

    public ReceivingAsync createReceivingAsync(IncomingDatagramMessage message)
                            throws ProtocolCreationException;;

    public ReceivingSync createReceivingSync(StreamRequestMessage requestMessage);
                            throws ProtocolCreationException;;

    public SendingNotificationAlive createSendingNotificationAlive(LocalDevice ld);
    public SendingNotificationByebye createSendingNotificationByebye(LocalDevice ld);
    public SendingSearch createSendingSearch(UpnpHeader searchTarget);
    public SendingAction createSendingAction(ActionInvocation invocation, URL url);
    public SendingSubscribe createSendingSubscribe(RemoteGENASubscription s);
    public SendingRenewal createSendingRenewal(RemoteGENASubscription s);
    public SendingUnsubscribe createSendingUnsubscribe(RemoteGENASubscription s);
    public SendingEvent createSendingEvent(LocalGENASubscription s);
    
}]]></pre>
                                </div>
                                <p>
                    This API is a low-level interface that allows you to access the internals of the UPnP stack,
                    in the rare case you need to manually trigger a particular procedure.
                </p>
                                <p>
                    The first two methods are called by the networking code when a message arrives,
                    either multicast or unicast UDP datagrams, or a TCP (HTTP) stream request. The default
                    protocol factory implementation will then pick the appropriate receiving protocol
                    implementation to handle the incoming message.
                </p>
                                <p>
                    The local registry of local services known to the UPnP stack naturally also sends messages,
                    such as ALIVE and BYEBYE notifications. Also, if you write a UPnP control point, various search,
                    control, and eventing messages are send by the local UPnP stack. The protocol factory decouples
                    the message sender (registry, control point) from the actual creation, preparation, and
                    transmission of the messages.
                </p>
                                <p>
                    Transmission and reception of messages at the lowest-level is the job of the
                    network <code>Router</code>.
                </p>
                            </div>
                        </div>
                        <div class="section" id="section.BasicAPI.UpnpService.Router">
                            <div class="title">3.1.3. Accessing low-level network services</div>
                            <div class="content">
                                <p>
                    The reception and sending of messages, that is, all message transport, is encapsulated
                    through the <code>Router</code> interface:
                </p>
                                <div>
                                    <pre class="prettyprint"><![CDATA[public interface Router {

    public void received(IncomingDatagramMessage msg);
    public void received(UpnpStream stream);

    public void send(OutgoingDatagramMessage msg);
    public StreamResponseMessage send(StreamRequestMessage msg);

    public void broadcast(byte[] bytes);

}]]></pre>
                                </div>
                                <p>
                    UPnP works with two types of messages: Multicast and unicast UDP
                    datagrams which are typically handled asynchronously, and request/response TCP messages
                    with an HTTP payload. The Cling Core bundled <code>RouterImpl</code> will
                    instantiate and maintain the listeners for incoming messages as well as transmit any
                    outgoing messages.
                </p>
                                <p>
                    The actual implementation of a message receiver which listens on the network or a message
                    sender is provided by the <code>UpnpServiceConfiguration</code>, which we have introduced
                    earlier. You can access the <code>Router</code> directly if you have to execute
                    low-level operations on the network layer of the UPnP stack.
                </p>
                                <p>
                    Most of the time you will however work with the <code>ControlPoint</code> and
                    <code>Registry</code> interfaces to interact with the UPnP stack.
                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.BasicAPI.ControlPoint">
                    <div class="title">3.2. Client operations with ControlPoint</div>
                    <div class="content">
                        <p>
            Your primary API when writing a UPnP client application is the <code>ControlPoint</code>.
            An instance is available with <code>getControlPoint()</code> on the <code>UpnpService</code>.
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[public interface ControlPoint {

    public void search(UpnpHeader searchType);
    public void execute(ActionCallback callback);
    public void execute(SubscriptionCallback callback);

}]]></pre>
                        </div>
                        <p>
            A UPnP client application typically wants to:
        </p>
                        <ul>
                            <li>
                Search the network for a particular service which it knows how to utilize. Any response
                to a search request will be delivered asynchronously, so you have to listen to the
                <code>Registry</code> for device registrations, which will occur when devices
                respond to your search request.
            </li>
                            <li>
                Execute actions which are offered by services. Action execution is processed asynchronously
                in Cling Core, and your <code>ActionCallback</code> will be notified when the execution
                was a success (with result values), or a failure (with error status code and messages).
            </li>
                            <li>
                Subscribe to a service's eventing, so your <code>SubscriptionCallback</code> is notified
                asynchronously when the state of a service changes and an event has been received for your
                client. You also use the callback to cancel the event subscription when you are no longer
                interested in state changes.
            </li>
                        </ul>
                        <p>
            Let's start with searching for UPnP devices on the network.
        </p>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.controlpoint.SearchExecuteTest">
                                <div class="title">3.2.1. Searching the network</div>
                                <div class="content">
                                    <p>
 When your control point joins the network it probably won't know any UPnP devices and services that
 might be available. To learn about the present devices it can broadcast - actually with UDP multicast
 datagrams - a search message which will be received by every device. Each receiver then inspects the
 search message and decides if it should reply directly (with notification UDP datagrams) to the
 sending control point.
 </p>
                                    <p>
 Search messages carry a <em>search type</em> header and receivers consider this header when they
 evaluate a potential response. The Cling <code>ControlPoint</code> API accepts a
 <code>UpnpHeader</code> argument when creating outgoing search messages.
 </p>
                                    <div class="citation javadoc" id="javadoc.example.controlpoint.SearchExecuteTest.searchAll..">
                                        <div class="content">
                                            <p>
 Most of the time you'd like all devices to respond to your search, this is what the
 dedicated <code>STAllHeader</code> is used for:
 </p>
                                            <div class="citation javacode" id="javacode.example.controlpoint.SearchExecuteTest.searchAll..">
                                                <div class="content">
                                                    <pre class="prettyprint">upnpService.getControlPoint().search(
        new STAllHeader()
);
</pre>
                                                </div>
                                            </div>
                                            <p>
 Notification messages will be received by your control point and you can listen to
 the <code>Registry</code> and inspect the found devices and their services. (By the
 way, if you call <code>search()</code> without any argument, that's the same.)
 </p>
                                        </div>
                                    </div>
                                    <div class="citation javadoc" id="javadoc.example.controlpoint.SearchExecuteTest.searchUDN..">
                                        <div class="content">
                                            <p>
 On the other hand, when you already know the unique device name (UDN) of the device you
 are searching for - maybe because your control point remembered it while it was turned off - you
 can send a message which will trigger a response from only a particular device:
 </p>
                                            <div class="citation javacode" id="javacode.example.controlpoint.SearchExecuteTest.searchUDN..">
                                                <div class="content">
                                                    <pre class="prettyprint">upnpService.getControlPoint().search(
        new UDNHeader(udn)
);
</pre>
                                                </div>
                                            </div>
                                            <p>
 This is mostly useful to avoid network congestion when dozens of devices might <em>all</em>
 respond to a search request. Your <code>Registry</code> listener code however still has to
 inspect each newly found device, as registrations might occur independently from searches.
 </p>
                                        </div>
                                    </div>
                                    <div class="citation javadoc" id="javadoc.example.controlpoint.SearchExecuteTest.searchDeviceType..">
                                        <div class="content">
                                            <p>
 You can also search by device or service type. This search request will trigger responses
 from all devices of type "<code>urn:schemas-upnp-org:device:BinaryLight:1</code>":
 </p>
                                            <div class="citation javacode" id="javacode.example.controlpoint.SearchExecuteTest.searchDeviceType..">
                                                <div class="content">
                                                    <pre class="prettyprint">UDADeviceType udaType = new UDADeviceType("BinaryLight");
upnpService.getControlPoint().search(
        new UDADeviceTypeHeader(udaType)
);
</pre>
                                                </div>
                                            </div>
                                            <p>
 If the desired device type is of a custom namespace, use this variation:
 </p>
                                            <div class="citation javacode" id="javacode_dt_search_custom">
                                                <div class="content">
                                                    <pre class="prettyprint">DeviceType type = new DeviceType("org-mydomain", "MyDeviceType", 1);
upnpService.getControlPoint().search(
        new DeviceTypeHeader(type)
);
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="citation javadoc" id="javadoc.example.controlpoint.SearchExecuteTest.searchServiceType..">
                                        <div class="content">
                                            <p>
 Or, you can search for all devices which implement a particular service type:
 </p>
                                            <div class="citation javacode" id="javacode.example.controlpoint.SearchExecuteTest.searchServiceType..">
                                                <div class="content">
                                                    <pre class="prettyprint">UDAServiceType udaType = new UDAServiceType("SwitchPower");
upnpService.getControlPoint().search(
        new UDAServiceTypeHeader(udaType)
);
</pre>
                                                </div>
                                            </div>
                                            <div class="citation javacode" id="javacode_st_search_custom">
                                                <div class="content">
                                                    <pre class="prettyprint">ServiceType type = new ServiceType("org-mydomain", "MyServiceType", 1);
upnpService.getControlPoint().search(
        new ServiceTypeHeader(type)
);
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.controlpoint.ActionInvocationTest">
                                <div class="title">3.2.2. Invoking an action</div>
                                <div class="content">
                                    <p>
 UPnP services expose state variables and actions. While the state variables represent the
 current state of the service, actions are the operations used to query or maniuplate the
 service's state. You have to obtain a <code>Service</code> instance from a
 <code>Device</code> to access any <code>Action</code>. The target device can be local
 to the same UPnP stack as your control point, or it can be remote of another device anywhere
 on the network. We'll discuss later in this chapter how to access devices through the
 local stack's <code>Registry</code>.
 </p>
                                    <p>
 Once you have the device, access the <code>Service</code> through the metadata model, for example:
 </p>
                                    <div class="citation javacode" id="ai_findservice">
                                        <div class="content">
                                            <pre class="prettyprint">Service service = device.findService(new UDAServiceId("SwitchPower"));
Action getStatusAction = service.getAction("GetStatus");
</pre>
                                        </div>
                                    </div>
                                    <p>
 This method will search the device and all its embedded devices for a service with the given
 identifier and returns either the found <code>Service</code> or <code>null</code>. The Cling
 metamodel is thread-safe, so you can share an instance of <code>Service</code> or
 <code>Action</code> and access it concurrently.
 </p>
                                    <p>
 Invoking an action is the job of an instance of <code>ActionInvocation</code>, note that this
 instance is <em>NOT</em> thread-safe and each thread that wishes to execute an action has to
 obtain its own invocation from the <code>Action</code> metamodel:
 </p>
                                    <div class="citation javacode" id="ai_getstatus">
                                        <div class="content">
                                            <pre class="prettyprint">ActionInvocation getStatusInvocation = new ActionInvocation(getStatusAction);

ActionCallback getStatusCallback = new ActionCallback(getStatusInvocation) {

    @Override
    public void success(ActionInvocation invocation) {
        ActionArgumentValue status  = invocation.getOutput("ResultStatus");

        assert status != null;

        assertEquals(status.getArgument().getName(), "ResultStatus");

        assertEquals(status.getDatatype().getClass(), BooleanDatatype.class);
        assertEquals(status.getDatatype().getBuiltin(), Datatype.Builtin.BOOLEAN);

        assertEquals((Boolean) status.getValue(), Boolean.valueOf(false));
        assertEquals(status.toString(), "0"); // '0' is 'false' in UPnP
    }

    @Override
    public void failure(ActionInvocation invocation,
                        UpnpResponse operation,
                        String defaultMsg) {
        System.err.println(defaultMsg);
    }
};

upnpService.getControlPoint().execute(getStatusCallback);
</pre>
                                        </div>
                                    </div>
                                    <p>
 Execution is asynchronous, your <code>ActionCallback</code> has two methods which will be called
 by the UPnP stack when the execution completes. If the action is successful, you can obtain any
 output argument values from the invocation instance, which is conveniently passed into the
 <code>success()</code> method. You can inspect the named output argument values and their datatypes to
 continue processing the result.
 </p>
                                    <p>
 Action execution doesn't have to be processed asynchronously, after all, the underlying HTTP/SOAP protocol
 is a request waiting for a response. The callback programming model however fits nicely into a typical
 UPnP client, which also has to process event notifications and device registrations asynchronously. If
 you want to execute an <code>ActionInvocation</code> directly, within the current thread, use the empty
 <code>ActionCallback.Default</code> implementation:
 </p>
                                    <div class="citation javacode" id="ai_synchronous">
                                        <div class="content">
                                            <pre class="prettyprint">new ActionCallback.Default(getStatusInvocation, upnpService.getControlPoint()).run();
</pre>
                                        </div>
                                    </div>
                                    <p>
 When invocation fails you can access the failure details through
 <code>invocation.getFailure()</code>, or use the shown convenience method to create a simple error
 message. See the Javadoc of <code>ActionCallback</code> for more details.
 </p>
                                    <p>
 When an action requires input argument values, you have to provide them. Like output arguments, any
 input arguments of actions are also named, so you can set them by calling <code>setInput("MyArgumentName", value)</code>:
 </p>
                                    <div class="citation javacode" id="ai_settarget">
                                        <div class="content">
                                            <pre class="prettyprint">Action action = service.getAction("SetTarget");

ActionInvocation setTargetInvocation = new ActionInvocation(action);

setTargetInvocation.setInput("NewTargetValue", true); // Can throw InvalidValueException

// Alternative:
//
// setTargetInvocation.setInput(
//         new ActionArgumentValue(
//                 action.getInputArgument("NewTargetValue"),
//                 true
//         )
// );

ActionCallback setTargetCallback = new ActionCallback(setTargetInvocation) {

    @Override
    public void success(ActionInvocation invocation) {
        ActionArgumentValue[] output = invocation.getOutput();
        assertEquals(output.length, 0);
    }

    @Override
    public void failure(ActionInvocation invocation,
                        UpnpResponse operation,
                        String defaultMsg) {
        System.err.println(defaultMsg);
    }
};

upnpService.getControlPoint().execute(setTargetCallback);
</pre>
                                        </div>
                                    </div>
                                    <p>
 This action has one input argument of UPnP type "boolean". You can set a Java <code>boolean</code>
 primitive or <code>Boolean</code> instance and it will be automatically converted. If you set an
 invalid value for a particular argument, such as an instance with the wrong type,
 an <code>InvalidValueException</code> will be thrown immediately.
 </p>
                                    <div class="note">
                                        <div class="title">Empty values and null in Cling</div>
 There is no difference between empty string <code>""</code> and <code>null</code> in Cling,
 because the UPnP specification does not address this issue. The SOAP  message of an action call
 or an event message must contain an element <code><![CDATA[<SomeVar></SomeVar>]]></code> for all arguments, even if
 it is an empty XML element. If you provide  an empty string or a null value when preparing a message,
 it will always be a <code>null</code> on the receiving end because we can only transmit one
 thing, an empty XML element. If you forget to set an input argument's value, it will be null/empty element.
 </div>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.controlpoint.EventSubscriptionTest">
                                <div class="title">3.2.3. Receiving events from services</div>
                                <div class="content">
                                    <p>
 The UPnP specification defines a general event notification architecture (GENA) which is based
 on a publish/subscribe paradigm. Your control point subscribes with a service in order to receive
 events. When the service state changes, an event message will be delivered to the callback
 of your control point. Subscriptions are periodically refreshed until you unsubscribe from
 the service. If you do not unsubscribe and if a refresh of the subscription fails, maybe
 because the control point was turned off without proper shutdown, the subscription will
 timeout on the publishing service's side.
 </p>
                                    <p>
 This is an example subscription on a service that sends events for a state variable named
 <code>Status</code> (e.g. the previously shown <a href="#section.SwitchPower">SwitchPower</a>
 service). The subscription's refresh and timeout period is 600 seconds:
 </p>
                                    <div class="citation javacode" id="javacode.example.controlpoint.EventSubscriptionTest.subscriptionLifecycle..">
                                        <div class="content">
                                            <pre class="prettyprint">SubscriptionCallback callback = new SubscriptionCallback(service, 600) {

    @Override
    public void established(GENASubscription sub) {
        System.out.println("Established: " + sub.getSubscriptionId());
    }

    @Override
    protected void failed(GENASubscription subscription,
                          UpnpResponse responseStatus,
                          Exception exception,
                          String defaultMsg) {
        System.err.println(defaultMsg);
    }

    @Override
    public void ended(GENASubscription sub,
                      CancelReason reason,
                      UpnpResponse response) {
        assertNull(reason);
    }

    @Override
    public void eventReceived(GENASubscription sub) {

        System.out.println("Event: " + sub.getCurrentSequence().getValue());

        Map&lt;String, StateVariableValue&gt; values = sub.getCurrentValues();
        StateVariableValue status = values.get("Status");

        assertEquals(status.getDatatype().getClass(), BooleanDatatype.class);
        assertEquals(status.getDatatype().getBuiltin(), Datatype.Builtin.BOOLEAN);

        System.out.println("Status is: " + status.toString());

    }

    @Override
    public void eventsMissed(GENASubscription sub, int numberOfMissedEvents) {
        System.out.println("Missed events: " + numberOfMissedEvents);
    }

    @Override
    protected void invalidMessage(RemoteGENASubscription sub,
                                  UnsupportedDataException ex) {
        // Log/send an error report?
    }
};

upnpService.getControlPoint().execute(callback);
</pre>
                                        </div>
                                    </div>
                                    <p>
 The <code>SubscriptionCallback</code> offers the methods <code>failed()</code>,
 <code>established()</code>, and <code>ended()</code> which are called during a subscription's lifecycle.
 When a subscription ends you will be notified with a <code>CancelReason</code> whenever the termination
 of the subscription was irregular. See the Javadoc of these methods for more details.
 </p>
                                    <p>
 Every event message from the service will be passed to the <code>eventReceived()</code> method,
 and every message will carry a sequence number. You can access the changed state variable values
 in this method, note that only state variables which changed are included in the event messages.
 A special event message called the "initial event" will be send by the service once, when you
 subscribe. This message contains values for <em>all</em> evented state variables of the service;
 you'll receive an initial snapshot of the state of the service at subscription time.
 </p>
                                    <p>
 Whenever the receiving UPnP stack detects an event message that is out of sequence, e.g. because
 some messages were lost during transport, the <code>eventsMissed()</code> method will be called
 before you receive the event. You then decide if missing events is important for the correct
 behavior of your application, or if you can silently ignore it and continue processing events
 with non-consecutive sequence numbers.
 </p>
                                    <p>
 You can optionally override the <code>invalidMessage()</code> method and react to message parsing
 errors, if your subscription is with a remote service. Most of the time all you can do here is
 log or report an error to developers, so they can work around the broken remote service (UPnP
 interoperability is frequently very poor).
 </p>
                                    <p>
 You end a subscription regularly by calling <code>callback.end()</code>, which will unsubscribe
 your control point from the service.
 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.BasicAPI.Registry">
                    <div class="title">3.3. The Registry</div>
                    <div class="content">
                        <p>
            The <code>Registry</code>, which you access with <code>getRegistry()</code> on the
            <code>UpnpService</code>, is the heart of a Cling Core UPnP stack. The registry
            is responsible for:
        </p>
                        <ul>
                            <li>
                Maintaining discovered UPnP devices on your network. It also offers a management
                API so you can register local devices and offer local services. This is how you
                expose your own UPnP devices on the network. The registry handles all notification,
                expiration, request routing, refreshing, and so on.
            </li>
                            <li>
                Managing GENA (general event &amp; notification architecture) subscriptions. Any
                outgoing subscription to a remote service is known by the registry, it is refreshed
                periodically so it doesn't expire. Any incoming eventing subscription to a local
                service is also known and maintained by the registry (expired and removed when necessary).
            </li>
                            <li>
                Providing the interface for the addition and removal of <code>RegistryListener</code>
                instances. A registry listener is used in client or server UPnP applications, it
                provides a uniform interface for notification of registry events. Typically, you write
                and register a listener to be notified when a service you want to work with becomes
                available on the network - on a local or remote device - and when it disappears.
            </li>
                        </ul>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.registry.RegistryBrowseTest">
                                <div class="title">3.3.1. Browsing the Registry</div>
                                <div class="content">
                                    <p>
 Although you typically create a <code>RegistryListener</code> to be notified of discovered and
 disappearing UPnP devices on your network, sometimes you have to browse the <code>Registry</code>
 manually.
 </p>
                                    <div class="citation javadoc" id="javadoc.example.registry.RegistryBrowseTest.findDevice..">
                                        <div class="content">
                                            <p>
 The following call will return a device with the given unique device name, but
 only a root device and not any embedded device. Set the second parameter of
 <code>registry.getDevice()</code> to <code>false</code> if the device you are
 looking for might be an embedded device.
 </p>
                                            <div class="citation javacode" id="javacode.example.registry.RegistryBrowseTest.findDevice..">
                                                <div class="content">
                                                    <pre class="prettyprint">Registry registry = upnpService.getRegistry();
Device foundDevice = registry.getDevice(udn, true);

assertEquals(foundDevice.getIdentity().getUdn(), udn);
</pre>
                                                </div>
                                            </div>
                                            <p>
 If you know that the device you need is a <code>LocalDevice</code> - or a
 <code>RemoteDevice</code> - you can use the following operation:
 </p>
                                            <div class="citation javacode" id="javacode_find_device_local">
                                                <div class="content">
                                                    <pre class="prettyprint">LocalDevice localDevice = registry.getLocalDevice(udn, true);
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="citation javadoc" id="javadoc.example.registry.RegistryBrowseTest.findDeviceByType..">
                                        <div class="content">
                                            <p>
 Most of the time you need a device that is of a particular type or that implements
 a particular service type, because this is what your control point can handle:
 </p>
                                            <div class="citation javacode" id="javacode.example.registry.RegistryBrowseTest.findDeviceByType..">
                                                <div class="content">
                                                    <pre class="prettyprint">DeviceType deviceType = new UDADeviceType("MY-DEVICE-TYPE", 1);
Collection&lt;Device&gt; devices = registry.getDevices(deviceType);
</pre>
                                                </div>
                                            </div>
                                            <div class="citation javacode" id="javacode_find_serv_type">
                                                <div class="content">
                                                    <pre class="prettyprint">ServiceType serviceType = new UDAServiceType("MY-SERVICE-TYPE-ONE", 1);
Collection&lt;Device&gt; devices = registry.getDevices(serviceType);
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.registry.RegistryListenerTest">
                                <div class="title">3.3.2. Listening to registry changes</div>
                                <div class="content">
                                    <p>
 The <code>RegistryListener</code> is your primary API when discovering devices and services with your
 control point. UPnP operates asynchronous, so advertisements (either <em>alive</em> or <em>byebye</em>)
 of devices can occur at any time. Responses to your network search messages are also asynchronous.
 </p>
                                    <p>
 This is the interface:
 </p>
                                    <div class="citation javacode" id="javacode.example.registry.RegistryListenerTest.RegistryListener">
                                        <div class="content">
                                            <pre class="prettyprint">public interface RegistryListener {

    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice device);

    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice device, Exception ex);

    public void remoteDeviceAdded(Registry registry, RemoteDevice device);

    public void remoteDeviceUpdated(Registry registry, RemoteDevice device);

    public void remoteDeviceRemoved(Registry registry, RemoteDevice device);

    public void localDeviceAdded(Registry registry, LocalDevice device);

    public void localDeviceRemoved(Registry registry, LocalDevice device);

}
</pre>
                                        </div>
                                    </div>
                                    <p>
 Typically you don't want to implement all of these methods. Some are only useful if you write
 a service or a generic control point. Most of the time you want to be notified when a particular
 device with a particular service appears on your network. So it is much easier to extend
 the <code>DefaultRegistryListener</code>, which has empty implementations for all methods of
 the interface, and only override the methods you need.
 </p>
                                    <div class="citation javadoc" id="javadoc.example.registry.RegistryListenerTest.quickstartListener..">
                                        <div class="content">
                                            <p>
 The <code>remoteDeviceDiscoveryStarted()</code> and <code>remoteDeviceDiscoveryFailed()</code>
 methods are completely optional but useful on slow machines (such as Android handsets). Cling
 will retrieve and initialize all device metadata for each UPnP device before it will announce
 it on the <code>Registry</code>. UPnP metadata is split into several XML descriptors, so retrieval
 via HTTP of these descriptors, parsing, and validating all metadata for a complex UPnP device
 and service model can take several seconds. These two methods allow you to access the device
 as soon as possible, after the first descriptor has been retrieved and parsed. At this time
 the services metadata is however not available:
 </p>
                                            <div class="citation javacode" id="javacode.example.registry.RegistryListenerTest.QuickstartRegistryListener">
                                                <div class="content">
                                                    <pre class="prettyprint">public class QuickstartRegistryListener extends DefaultRegistryListener {

    @Override
    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice device) {

        // You can already use the device here and you can see which services it will have
        assertEquals(device.findServices().length, 3);

        // But you can't use the services
        for (RemoteService service : device.findServices()) {
            assertEquals(service.getActions().length, 0);
            assertEquals(service.getStateVariables().length, 0);
        }
    }

    @Override
    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice device, Exception ex) {
        // You might want to drop the device, its services couldn't be hydrated
    }
}
</pre>
                                                </div>
                                            </div>
                                            <p>
 This is how you register and activate a listener:
 </p>
                                            <div class="citation javacode" id="javacode.example.registry.RegistryListenerTest.quickstartListener..">
                                                <div class="content">
                                                    <pre class="prettyprint">QuickstartRegistryListener listener = new QuickstartRegistryListener();
upnpService.getRegistry().addListener(listener);
</pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="citation javadoc" id="javadoc.example.registry.RegistryListenerTest.regularListener..">
                                        <div class="content">
                                            <p>
 Most of the time, on any device that is faster than a cellphone, your listeners will look
 like this:
 </p>
                                            <div class="citation javacode" id="javacode.example.registry.RegistryListenerTest.MyListener">
                                                <div class="content">
                                                    <pre class="prettyprint">public class MyListener extends DefaultRegistryListener {

    @Override
    public void remoteDeviceAdded(Registry registry, RemoteDevice device) {
        Service myService = device.findService(new UDAServiceId("MY-SERVICE-123"));
        if (myService != null) {
            // Do something with the discovered service
        }
    }

    @Override
    public void remoteDeviceRemoved(Registry registry, RemoteDevice device) {
        // Stop using the service if this is the same device, it's gone now
    }
}
</pre>
                                                </div>
                                            </div>
                                            <p>
 The device metadata of the parameter to <code>remoteDeviceAdded()</code> is fully hydrated, all
 of its services, actions, and state variables are available. You can continue with this metadata,
 writing action invocations and event monitoring callbacks. You also might want to react accordingly
 when the device disappears from the network.
 </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div xmlns:xi="http://www.w3.org/2001/XInclude" class="chapter" id="chapter.CreatingServices">
            <div class="title">4. Creating and binding services</div>
            <div class="content">
                <p>
            Out of the box, any Java class can be a UPnP service. Let's go back to the first
            example of a UPnP service in chapter 1, the <a href="#section.SwitchPower">SwitchPower:1</a>
            service implementation, repeated here:
        </p>
                <div class="citation javacode" id="switchpower_repeat">
                    <div class="content">
                        <pre class="prettyprint">package example.binarylight;

import org.fourthline.cling.binding.annotations.*;

@UpnpService(
        serviceId = @UpnpServiceId("SwitchPower"),
        serviceType = @UpnpServiceType(value = "SwitchPower", version = 1)
)
public class SwitchPower {

    @UpnpStateVariable(defaultValue = "0", sendEvents = false)
    private boolean target = false;

    @UpnpStateVariable(defaultValue = "0")
    private boolean status = false;

    @UpnpAction
    public void setTarget(@UpnpInputArgument(name = "NewTargetValue")
                          boolean newTargetValue) {
        target = newTargetValue;
        status = newTargetValue;
        System.out.println("Switch is: " + status);
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "RetTargetValue"))
    public boolean getTarget() {
        return target;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "ResultStatus"))
    public boolean getStatus() {
        // If you want to pass extra UPnP information on error:
        // throw new ActionException(ErrorCode.ACTION_NOT_AUTHORIZED);
        return status;
    }

}
</pre>
                    </div>
                </div>
                <p>
            This class depends on the <code>org.fourthline.cling.annotation</code> package at compile-time.
            The metadata encoded in these source annotations is preserved in the bytecode and Cling
            will read it at runtime when you <a href="#section.BindingDevice">bind the service</a>
            ("binding" is just a fancy word for reading and writing metadata). You can load and execute
            this class without accessing the annotations, in any environment and without having
            the Cling libraries on your classpath. This is a compile-time dependency only.
        </p>
                <p>
            Cling annotations give you much flexibility in designing your service implementation class,
            as shown in the following examples.
        </p>
                <div class="section">
                    <div class="citation javadoc" id="javadoc.example.localservice.BasicBindingTest">
                        <div class="title">4.1. Annotating a service implementation</div>
                        <div class="content">
                            <p>
 The previously shown service class had a few annotations on the class itself, declaring
 the name and version of the service. Then annotations on fields were used to declare the
 state variables of the service and annotations on methods to declare callable actions.
 </p>
                            <p>
 Your service implementation might not have fields that directly map to UPnP state variables.
 </p>
                            <div class="section">
                                <div class="citation javadoc" id="javadoc.example.localservice.SwitchPowerAnnotatedClass">
                                    <div class="title">4.1.1. Mapping state variables</div>
                                    <div class="content">
                                        <p>
 The following example only has a single field named <code>power</code>,
 however, the UPnP service requires two state variables. In this case
 you declare the UPnP state variables with annotations on the class:
 </p>
                                        <div class="citation javacode" id="javacode.example.localservice.SwitchPowerAnnotatedClass">
                                            <div class="content">
                                                <pre class="prettyprint">@UpnpService(
        serviceId = @UpnpServiceId("SwitchPower"),
        serviceType = @UpnpServiceType(value = "SwitchPower", version = 1)

)
@UpnpStateVariables(
        {
                @UpnpStateVariable(
                        name = "Target",
                        defaultValue = "0",
                        sendEvents = false
                ),
                @UpnpStateVariable(
                        name = "Status",
                        defaultValue = "0"
                )
        }
)
public class SwitchPowerAnnotatedClass {

    private boolean power;

    @UpnpAction
    public void setTarget(@UpnpInputArgument(name = "NewTargetValue")
                          boolean newTargetValue) {
        power = newTargetValue;
        System.out.println("Switch is: " + power);
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "RetTargetValue"))
    public boolean getTarget() {
        return power;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "ResultStatus"))
    public boolean getStatus() {
        return power;
    }
}
</pre>
                                            </div>
                                        </div>
                                        <p>
 The <code>power</code> field is not mapped to the state variables and
 you are free to design your service internals as you like. Did you
 notice that you never declared the datatype of your state variables?
 Also, how can Cling read the "current state" of your service for GENA
 subscribers or when a "query state variable" action is received?
 Both questions have the same answer.
 </p>
                                        <p>
 Let's consider GENA eventing first. This example has an evented
 state variable called <code>Status</code>, and if a control point
 subscribes to the service to be notified of changes, how
 will Cling obtain the current status? If you'd have used
 <code>@UpnpStateVariable</code> on your fields, Cling would then
 directly access field values through Java Reflection. On the other
 hand if you declare state variables not on fields but on your service
 class, Cling will during binding detect any JavaBean-style getter
 method that matches the derived property name of the state variable.
 </p>
                                        <p>
 In other words, Cling will discover that your class has a
 <code>getStatus()</code> method. It doesn't matter if that method
 is also an action-mapped method, the important thing is that it
 matches JavaBean property naming conventions. The <code>Status</code>
 UPnP state variable maps to the <code>status</code> property, which
 is expected to have a <code>getStatus()</code> accessor method.
 Cling will use this method to read the current state of your
 service for GENA subscribers and when the state variable is
 manually queried.
 </p>
                                        <p>
 If you do not provide a UPnP datatype name in your
 <code>@UpnpStateVariable</code> annotation, Cling will use the type
 of the annotated field or discovered JavaBean getter method to
 figure out the type. The supported default mappings between Java types
 and UPnP datatypes are shown in the following table:
 </p>
                                        <table border="1" class="infotable halfwidth">
                                            <thead>
                                                <tr>
                                                    <th>Java Type</th>
                                                    <th class="halfwidth">UPnP Datatype</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Boolean</code>
                                                    </td>
                                                    <td>
                                                        <code>boolean</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>boolean</code>
                                                    </td>
                                                    <td>
                                                        <code>boolean</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Short</code>
                                                    </td>
                                                    <td>
                                                        <code>i2</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>short</code>
                                                    </td>
                                                    <td>
                                                        <code>i2</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Integer</code>
                                                    </td>
                                                    <td>
                                                        <code>i4</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>int</code>
                                                    </td>
                                                    <td>
                                                        <code>i4</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>org.fourthline.cling.model.types.UnsignedIntegerOneByte</code>
                                                    </td>
                                                    <td>
                                                        <code>ui1</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>org.fourthline.cling.model.types.UnsignedIntegerTwoBytes</code>
                                                    </td>
                                                    <td>
                                                        <code>ui2</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>org.fourthline.cling.model.types.UnsignedIntegerFourBytes</code>
                                                    </td>
                                                    <td>
                                                        <code>ui4</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Float</code>
                                                    </td>
                                                    <td>
                                                        <code>r4</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>float</code>
                                                    </td>
                                                    <td>
                                                        <code>r4</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Double</code>
                                                    </td>
                                                    <td>
                                                        <code>float</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>double</code>
                                                    </td>
                                                    <td>
                                                        <code>float</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.Character</code>
                                                    </td>
                                                    <td>
                                                        <code>char</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>char</code>
                                                    </td>
                                                    <td>
                                                        <code>char</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.lang.String</code>
                                                    </td>
                                                    <td>
                                                        <code>string</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.util.Calendar</code>
                                                    </td>
                                                    <td>
                                                        <code>datetime</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>byte[]</code>
                                                    </td>
                                                    <td>
                                                        <code>bin.base64</code>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <code>java.net.URI</code>
                                                    </td>
                                                    <td>
                                                        <code>uri</code>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <p>
 Cling tries to provide smart defaults. For example, the previously shown service classes
 did not name the related state variable of action output arguments, as required by UPnP.
 Cling will automatically detect that the <code>getStatus()</code> method is a JavaBean
 getter method (its name starts with <code>get</code> or <code>is</code>) and use the
 JavaBean property name to find the related state variable. In this case that would be
 the JavaBean property <code>status</code> and Cling is also smart enough to know that
 you really want the uppercase UPnP state variable named <code>Status</code>.
 </p>
                            <div class="section">
                                <div class="citation javadoc" id="javadoc.example.localservice.SwitchPowerNamedStateVariable">
                                    <div class="title">4.1.2. Explicitly naming related state variables</div>
                                    <div class="content">
                                        <p>
 If your mapped action method does not match the name of a mapped state variable,
 you have to provide the name of (any) argument's related state variable:
 </p>
                                        <div class="citation javacode" id="javacode.example.localservice.SwitchPowerNamedStateVariable">
                                            <div class="content">
                                                <pre class="prettyprint">@UpnpAction(
        name = "GetStatus",
        out = @UpnpOutputArgument(
                name = "ResultStatus",
                stateVariable = "Status"
        )
)
public boolean retrieveStatus() {
    return status;
}
</pre>
                                            </div>
                                        </div>
                                        <p>
 Here the method has the name <code>retrieveStatus</code>, which
 you also have to override if you want it be known as a the
 <code>GetStatus</code> UPnP action. Because it is no longer a JavaBean
 accessor for <code>status</code>, it explicitly has to be linked with
 the related state variable <code>Status</code>. You always have to
 provide the related state variable name if your action has more than one
 output argument.
 </p>
                                        <p>
 The "related statevariable" detection algorithm in Cling has one more trick
 up its sleeve however. The UPnP specification says that a state variable which
 is only ever used to describe the type of an input or output argument should
 be named with the prefix <code>A_ARG_TYPE_</code>. So if you do not name the
 related state variable of your action argument, Cling will also
 look for a state variable with the name
 <code>A_ARG_TYPE_[Name Of Your Argument]</code>. In the example above, Cling
 is therefore also searching (unsuccessfully) for a state variable named
 <code>A_ARG_TYPE_ResultStatus</code>. (Given that direct querying
 of state variables is already deprecated in UDA 1.0, there are <em>NO</em>
 state variables which are anything but type declarations for action input/output
 arguments. This is a good example why UPnP is such a horrid specification.)
 </p>
                                    </div>
                                </div>
                            </div>
                            <p>
 For the next example, let's assume you have a class that was already written, not
 necessarily  as a service backend for UPnP but for some other purpose. You can't
 redesign and rewrite your class without interrupting all existing code. Cling offers
 some flexibility in the mapping of action methods, especially how the output of
 an action call is obtained.
 </p>
                            <div class="section">
                                <div class="citation javadoc" id="javadoc.example.localservice.SwitchPowerExtraGetter">
                                    <div class="title">4.1.3. Getting an output value from another method</div>
                                    <div class="content">
                                        <p>
 In the following example, the UPnP action has an output argument but the
 mapped method is void and does not return any value:
 </p>
                                        <div class="citation javacode" id="javacode.example.localservice.SwitchPowerExtraGetter">
                                            <div class="content">
                                                <pre class="prettyprint">public boolean getStatus() {
    return status;
}

@UpnpAction(
        name = "GetStatus",
        out = @UpnpOutputArgument(
                name = "ResultStatus",
                getterName = "getStatus"
        )
)
public void retrieveStatus() {
    // NOOP in this example
}
</pre>
                                            </div>
                                        </div>
                                        <p>
 By providing a <code>getterName</code> in the annotation you can instruct
 Cling to call this getter method when the action method completes, taking
 the getter method's return value as the output argument value. If there
 are several output arguments you can map each to a different getter method.
 </p>
                                    </div>
                                </div>
                            </div>
                            <p>
 Alternatively, and especially if an action has several output arguments, you
 can return multiple values wrapped in a JavaBean from your action method.
 </p>
                            <div class="section">
                                <div class="citation javadoc" id="javadoc.example.localservice.SwitchPowerBeanReturn">
                                    <div class="title">4.1.4. Getting output values from a JavaBean</div>
                                    <div class="content">
                                        <p>
 Here the action method does not return the output argument value directly,
 but a JavaBean instance is returned which offers a getter method to obtain
 the output argument value:
 </p>
                                        <div class="citation javacode" id="javacode.example.localservice.SwitchPowerBeanReturn">
                                            <div class="content">
                                                <pre class="prettyprint">@UpnpAction(
        name = "GetStatus",
        out = @UpnpOutputArgument(
                name = "ResultStatus",
                getterName = "getWrapped"
        )
)
public StatusHolder getStatus() {
    return new StatusHolder(status);
}

public class StatusHolder {
    boolean wrapped;

    public StatusHolder(boolean wrapped) {
        this.wrapped = wrapped;
    }

    public boolean getWrapped() {
        return wrapped;
    }
}
</pre>
                                            </div>
                                        </div>
                                        <p>
 Cling will detect that you mapped a getter name in the output argument
 and that the action method is not <code>void</code>. It now expects that
 it will find the getter method on the returned JavaBean. If there are
 several output arguments, all of them have to be mapped to getter methods
 on the returned JavaBean.
 </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p>
            An important piece is missing from the <a href="#section.SwitchPower">SwitchPower:1</a>
            implementation: It doesn't fire any events when the status of the power switch changes. This
            is in fact required by the specification that defines the <em>SwitchPower:1</em> service.
            The following section explains how you can propagate state changes from within your
            UPnP service to local and remote subscribers.
        </p>
                <div class="section">
                    <div class="citation javadoc" id="javadoc.example.localservice.EventProviderTest">
                        <div class="title">4.2. Providing events on service state changes</div>
                        <div class="content">
                            <p>
 The standard mechanism in the JDK for eventing is the <code>PropertyChangeListener</code> reacting
 on a <code>PropertyChangeEvent</code>. Cling utilizes this API for service eventing, thus avoiding
 a dependency between your service code and proprietary APIs.
 </p>
                            <p>
 Consider the following modification of the original <a href="#section.SwitchPower">SwitchPower:1</a>
 implementation:
 </p>
                            <div class="citation javacode" id="javacode.example.localservice.SwitchPowerWithPropertyChangeSupport">
                                <div class="content">
                                    <pre class="prettyprint">package example.localservice;

import org.fourthline.cling.binding.annotations.*;
import java.beans.PropertyChangeSupport;

@UpnpService(
        serviceId = @UpnpServiceId("SwitchPower"),
        serviceType = @UpnpServiceType(value = "SwitchPower", version = 1)
)
public class SwitchPowerWithPropertyChangeSupport {

    private final PropertyChangeSupport propertyChangeSupport;

    public SwitchPowerWithPropertyChangeSupport() {
        this.propertyChangeSupport = new PropertyChangeSupport(this);
    }

    public PropertyChangeSupport getPropertyChangeSupport() {
        return propertyChangeSupport;
    }

    @UpnpStateVariable(defaultValue = "0", sendEvents = false)
    private boolean target = false;

    @UpnpStateVariable(defaultValue = "0")
    private boolean status = false;

    @UpnpAction
    public void setTarget(@UpnpInputArgument(name = "NewTargetValue") boolean newTargetValue) {

        boolean targetOldValue = target;
        target = newTargetValue;
        boolean statusOldValue = status;
        status = newTargetValue;

        // These have no effect on the UPnP monitoring but it's JavaBean compliant
        getPropertyChangeSupport().firePropertyChange("target", targetOldValue, target);
        getPropertyChangeSupport().firePropertyChange("status", statusOldValue, status);

        // This will send a UPnP event, it's the name of a state variable that triggers events
        getPropertyChangeSupport().firePropertyChange("Status", statusOldValue, status);
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "RetTargetValue"))
    public boolean getTarget() {
        return target;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "ResultStatus"))
    public boolean getStatus() {
        return status;
    }

}
</pre>
                                </div>
                            </div>
                            <p>
 The only additional dependency is on <code>java.beans.PropertyChangeSupport</code>. Cling
 detects the <code>getPropertyChangeSupport()</code> method of your service class and automatically
 binds the service management on it. You will have to have this method for eventing to work with
 Cling. You can create the <code>PropertyChangeSupport</code> instance
 in your service's constructor or any other way, the only thing Cling is interested in are property
 change events with the "property" name of a UPnP state variable.
 </p>
                            <p>
 Consequently, <code>firePropertyChange("NameOfAStateVariable")</code> is how you tell Cling that
 a state variable value has changed. It doesn't even matter if you call
 <code>firePropertyChange("Status", null, null)</code> or
 <code>firePropertyChange("Status", oldValue, newValue)</code>.
 Cling <em>only</em> cares about the state variable name; it will then check if the state variable is
 evented and pull the data out of your service implementation instance by accessing the appropriate
 field or a getter. Any "old" or "new" value you pass along is ignored.
 </p>
                            <p>
 Also note that <code>firePropertyChange("Target", null, null)</code> would have no effect, because
 <code>Target</code> is mapped with <code>sendEvents="false"</code>.
 </p>
                            <p>
 Most of the time a JavaBean property name is <em>not</em> the same as UPnP state variable
 name. For example, the JavaBean <code>status</code> property name is lowercase, while the UPnP state
 variable name is uppercase <code>Status</code>. The Cling eventing system ignores any property
 change event that doesn't exactly name a service state variable. This allows you to use
 JavaBean eventing independently from UPnP eventing, e.g. for GUI binding (Swing components also
 use the JavaBean eventing system).
 </p>
                            <p>
 Let's assume for the sake of the next example that <code>Target</code> actually is also evented,
 like <code>Status</code>. If several evented state variables change in your service, but you don't
 want to trigger individual change events for each variable, you can combine them in a single event
 as a comma-separated list of state variable names:
 </p>
                            <div class="citation javacode" id="javacode.example.localservice.SwitchPowerWithBundledPropertyChange.setTarget.boolean.">
                                <div class="content">
                                    <pre class="prettyprint">@UpnpAction
public void setTarget(@UpnpInputArgument(name = "NewTargetValue") boolean newTargetValue) {

    target = newTargetValue;
    status = newTargetValue;

    // If several evented variables changed, bundle them in one event separated with commas:
    getPropertyChangeSupport().firePropertyChange(
        "Target, Status", null, null
    );

    // Or if you don't like string manipulation:
    // getPropertyChangeSupport().firePropertyChange(
    //    ModelUtil.toCommaSeparatedList(new String[]{"Target", "Status"}), null, null
    //);
}
</pre>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p>
            More advanced mappings are possible and often required, as shown in the next
            examples. We are now leaving the <em>SwitchPower</em> service behind, as it is
            no longer complex enough.
        </p>
                <div class="section" id="section.CreatingServices.ConvertingValues">
                    <div class="title">4.3. Converting string action argument values</div>
                    <div class="content">
                        <p>
            The UPnP specification defines no framework for custom datatypes. The
            predictable result is that service designers and vendors are overloading
            strings with whatever semantics they consider necessary for their particular
            needs. For example, the UPnP A/V specifications often require lists of values
            (like a list of strings or a list of numbers), which are then transported
            between service and control point as a single string - the individual values
            are represented in this string separated by commas.
        </p>
                        <p>
            Cling supports these conversions and it tries to be as transparent as possible.
        </p>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.localservice.StringConvertibleTest">
                                <div class="title">4.3.1. String value converters</div>
                                <div class="content">
                                    <p>
 Consider the following service class with all state variables of
 <code>string</code> UPnP datatype - but with a much more specific
 Java type:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithStringConvertibles">
                                        <div class="content">
                                            <pre class="prettyprint">import org.fourthline.cling.model.types.csv.CSV;
import org.fourthline.cling.model.types.csv.CSVInteger;

@UpnpService(
        serviceId = @UpnpServiceId("MyService"),
        serviceType = @UpnpServiceType(namespace = "mydomain", value = "MyService"),
        stringConvertibleTypes = MyStringConvertible.class
)
public class MyServiceWithStringConvertibles {

    @UpnpStateVariable
    private URL myURL;

    @UpnpStateVariable
    private URI myURI;

    @UpnpStateVariable(datatype = "string")
    private List&lt;Integer&gt; myNumbers;

    @UpnpStateVariable
    private MyStringConvertible myStringConvertible;

    @UpnpAction(out = @UpnpOutputArgument(name = "Out"))
    public URL getMyURL() {
        return myURL;
    }

    @UpnpAction
    public void setMyURL(@UpnpInputArgument(name = "In") URL myURL) {
        this.myURL = myURL;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "Out"))
    public URI getMyURI() {
        return myURI;
    }

    @UpnpAction
    public void setMyURI(@UpnpInputArgument(name = "In") URI myURI) {
        this.myURI = myURI;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "Out"))
    public CSV&lt;Integer&gt; getMyNumbers() {
        CSVInteger wrapper = new CSVInteger();
        if (myNumbers != null)
            wrapper.addAll(myNumbers);
        return wrapper;
    }

    @UpnpAction
    public void setMyNumbers(
            @UpnpInputArgument(name = "In")
            CSVInteger myNumbers
    ) {
        this.myNumbers = myNumbers;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "Out"))
    public MyStringConvertible getMyStringConvertible() {
        return myStringConvertible;
    }

    @UpnpAction
    public void setMyStringConvertible(
            @UpnpInputArgument(name = "In")
            MyStringConvertible myStringConvertible
    ) {
        this.myStringConvertible = myStringConvertible;
    }
}
</pre>
                                        </div>
                                    </div>
                                    <p>
 The state variables are all of UPnP datatype <code>string</code> because
 Cling knows that the Java type of the annotated field is "string convertible".
 This is always the case for <code>java.net.URI</code> and <code>java.net.URL</code>.
 </p>
                                    <p>
 Any other Java type you'd like to use for automatic string conversion has to be named
 in the <code>@UpnpService</code> annotation on the class, like the
 <code>MyStringConvertible</code>. Note that these types have to
 have an appropriate <code>toString()</code> method and a single argument constructor
 that accepts a <code>java.lang.String</code> ("from string" conversion).
 </p>
                                    <p>
 The <code>List&lt;Integer&gt;</code> is the collection you'd use in your service
 implementation to group several numbers. Let's assume that for UPnP communication
 you need a comma-separated representation of the individual values in a string,
 as is required by many of the UPnP A/V specifications. First, tell Cling that
 the state variable really is a string datatype, it can't infer that
 from the field type. Then, if an action has this output argument, instead of
 manually creating the comma-separated string you pick the appropriate converter
 from the classes in <code>org.fourthline.cling.model.types.csv.*</code> and return
 it from your action method. These are actually <code>java.util.List</code>
 implementations, so you could use them <em>instead</em> of
 <code>java.util.List</code> if you don't care about the dependency. Any action
 input argument value can also be converted from a comma-separated string
 representation to a list automatically - all you have to do is use the
 CSV converter class as an input argument type.
 </p>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.localservice.EnumTest">
                                <div class="title">4.3.2. Working with enums</div>
                                <div class="content">
                                    <p>
 Java <code>enum</code>'s are special, unfortunately: Cling can convert
 your enum value into a string for transport in UPnP messages, but you
 have to convert it back manually from a string. This is shown in the
 following service example:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithEnum">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpService(
        serviceId = @UpnpServiceId("MyService"),
        serviceType = @UpnpServiceType(namespace = "mydomain", value = "MyService"),
        stringConvertibleTypes = MyStringConvertible.class
)
public class MyServiceWithEnum {

    public enum Color {
        Red,
        Green,
        Blue
    }

    @UpnpStateVariable
    private Color color;

    @UpnpAction(out = @UpnpOutputArgument(name = "Out"))
    public Color getColor() {
        return color;
    }

    @UpnpAction
    public void setColor(@UpnpInputArgument(name = "In") String color) {
        this.color = Color.valueOf(color);
    }

}
</pre>
                                        </div>
                                    </div>
                                    <p>
 Cling will automatically assume that the datatype is a UPnP string if the
 field (or getter) or getter Java type is an enum. Furthermore, an
 <code>&lt;allowedValueList&gt;</code> will be created in your service descriptor
 XML, so control points know that this state variable has in fact a defined
 set of possible values.
 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.CreatingServices.AllowedValues">
                    <div class="title">4.4. Restricting allowed state variable values</div>
                    <div class="content">
                        <p>
            The UPnP specification defines a set of rules for restricting legal values of
            state variables, in addition to their type. For string-typed state variables, you
            can provide a list of exclusively allowed strings. For numeric state variables,
            a value range with minimum, maximum, and allowed "step" (the interval) can be
            provided.
        </p>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.localservice.AllowedValueTest">
                                <div class="title">4.4.1. Exclusive list of string values</div>
                                <div class="content">
                                    <p>
 If you have a static list of legal string values, set it directly on the annotation
 of your state variable's field:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithAllowedValues">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpStateVariable(
    allowedValues = {"Foo", "Bar", "Baz"}
)
private String restricted;
</pre>
                                        </div>
                                    </div>
                                    <p>
 Alternatively, if your allowed values have to be determined dynamically when
 your service is being bound, you can implement a class with the
 <code>org.fourthline.cling.binding.AllowedValueProvider</code> interface:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithAllowedValueProvider">
                                        <div class="content">
                                            <pre class="prettyprint">public static class MyAllowedValueProvider implements AllowedValueProvider {
    @Override
    public String[] getValues() {
        return new String[] {"Foo", "Bar", "Baz"};
    }
}
</pre>
                                        </div>
                                    </div>
                                    <p>
 Then, instead of specifying a static list of string values in your state variable declaration,
 name the provider class:
 </p>
                                    <div class="citation javacode" id="MyServiceWithAllowedValueProvider-VAR">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpStateVariable(
    allowedValueProvider= MyAllowedValueProvider.class
)
private String restricted;
</pre>
                                        </div>
                                    </div>
                                    <p>
 Note that this provider will only be queried when your annotations are being processed,
 once when your service is bound in Cling.
 </p>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.localservice.AllowedValueRangeTest">
                                <div class="title">4.4.2. Restricting numeric value ranges</div>
                                <div class="content">
                                    <p>
 For numeric state variables, you can limit the set of legal values within a range
 when declaring the state variable:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithAllowedValueRange">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpStateVariable(
    allowedValueMinimum = 10,
    allowedValueMaximum = 100,
    allowedValueStep = 5
)
private int restricted;
</pre>
                                        </div>
                                    </div>
                                    <p>
 Alternatively, if your allowed range has to be determined dynamically when
 your service is being bound, you can implement a class with the
 <code>org.fourthline.cling.binding.AllowedValueRangeProvider</code> interface:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.MyServiceWithAllowedValueRangeProvider">
                                        <div class="content">
                                            <pre class="prettyprint">public static class MyAllowedValueProvider implements AllowedValueRangeProvider {
    @Override
    public long getMinimum() {
        return 10;
    }

    @Override
    public long getMaximum() {
        return 100;
    }

    @Override
    public long getStep() {
        return 5;
    }
}
</pre>
                                        </div>
                                    </div>
                                    <p>
 Then, instead of specifying a static list of string values in your state variable declaration,
 name the provider class:
 </p>
                                    <div class="citation javacode" id="MyServiceWithAllowedValueRangeProvider-VAR">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpStateVariable(
    allowedValueRangeProvider = MyAllowedValueProvider.class
)
private int restricted;
</pre>
                                        </div>
                                    </div>
                                    <p>
 Note that this provider will only be queried when your annotations are being processed,
 once when your service is bound in Cling.
 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="chapter" id="chapter.Android">
            <div class="title">5. Cling on Android</div>
            <div class="content">
                <p>
            Cling Core provides a UPnP stack for Android applications. Typically you'd write control point applications,
            as most Android systems today are small hand-held devices. You can however also write UPnP server
            applications on Android, all features of Cling Core are supported.
        </p>
                <p>
            Android platform level 15 (4.0) is required for Cling 2.x, use Cling 1.x to support older Android versions.
        </p>
                <div class="note">
                    <div class="title">Cling on the Android emulator</div>
            At the time of writing, receiving UDP Multicast datagrams was not supported by the Android emulator. The
            emulator will send (multicast) UDP datagrams, however. You will be able to send a multicast UPnP search and
            receive UDP unicast responses, therefore discover existing running devices. You will not discover devices
            which have been turned on after your search, and you will not receive any message when a device is switched
            off. Other control points on your network will not discover your local Android device/services at all. All
            of this can be confusing when testing your application, so unless you really understand what works and what
            doesn't, you might want to use a real device instead.
        </div>
                <p>
            The following examples are based on the Cling demo applications for Android, the
            <code>cling-demo-android-browser</code> and the <code>cling-demo-android-light</code>, available in the
            Cling distribution.
        </p>
                <div class="section" id="section.Android.ConfiguringService">
                    <div class="title">5.1. Configuring the application service</div>
                    <div class="content">
                        <p>
                    You could instantiate the Cling <code>UpnpService</code> as usual in your Android application's
                    main activity. On the other hand, if several activities in your application require access to the
                    UPnP stack, a better design would utilize a background <code>android.app.Service</code>. Any
                    activity that wants to access the UPnP stack can then bind and unbind from this service as needed.
                </p>
                        <p>
                    The interface of such a service component is available in Cling as
                    <code>org.fourthline.cling.android.AndroidUpnpService</code>:
                </p>
                        <div class="citation javacode" id="javacode.org.fourthline.cling.android.AndroidUpnpService">
                            <div class="content">
                                <pre class="prettyprint">public interface AndroidUpnpService {

    /**
     * @return The actual main instance and interface of the UPnP service.
     */
    public UpnpService get();

    /**
     * @return The configuration of the UPnP service.
     */
    public UpnpServiceConfiguration getConfiguration();

    /**
     * @return The registry of the UPnP service.
     */
    public Registry getRegistry();

    /**
     * @return The client API of the UPnP service.
     */
    public ControlPoint getControlPoint();

}
</pre>
                            </div>
                        </div>
                        <p>
                    An activity typically accesses the <code>Registry</code> of known UPnP devices or searches for and
                    controls UPnP devices with the <code>ControlPoint</code>.
                </p>
                        <p>
                    You have to configure the built-in implementation of this service component in your
                    <code>AndroidManifest.xml</code>, along with various required permissions:
                </p>
                        <div class="citation file" id="file.AndroidManifest.xml">
                            <div class="content">
                                <pre class="prettyprint">&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;manifest xmlns:android="http://schemas.android.com/apk/res/android"
          package="org.fourthline.cling.demo.android.browser"&gt;

    &lt;uses-permission android:name="android.permission.INTERNET"/&gt;
    &lt;uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/&gt;
    &lt;uses-permission android:name="android.permission.CHANGE_WIFI_MULTICAST_STATE"/&gt;
    &lt;uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/&gt;
    &lt;uses-permission android:name="android.permission.WAKE_LOCK"/&gt;

    &lt;uses-sdk
            android:targetSdkVersion="22"
            android:minSdkVersion="15"/&gt;

    &lt;application
            android:icon="@drawable/appicon"
            android:label="@string/appName"
            android:allowBackup="false"&gt;

        &lt;activity android:name=".BrowserActivity"&gt;
            &lt;intent-filter&gt;
                &lt;action android:name="android.intent.action.MAIN"/&gt;
                &lt;category android:name="android.intent.category.LAUNCHER"/&gt;
            &lt;/intent-filter&gt;
        &lt;/activity&gt;

        &lt;service android:name="org.fourthline.cling.android.AndroidUpnpServiceImpl"/&gt;

        &lt;!-- Or a custom service configuration, also use this class in bindService()!
        &lt;service android:name=".BrowserUpnpService"/&gt;
        --&gt;

    &lt;/application&gt;

&lt;/manifest&gt;
</pre>
                            </div>
                        </div>
                        <p>
                    If a WiFi interface is present, Cling requires access to the interface. Cling will automatically
                    detect when network interfaces are switched on and off and handle this situation gracefully: Any
                    client operation will result in a "no response from server" state when no network is available.
                    Your client code has to handle such a situation anyway.
                </p>
                        <p>
                    Cling uses a custom configuration on Android, the <code>AndroidUpnpServiceConfiguration</code>,
                    utilizing the Jetty transport and the <code>Recovering*</code> XML parsers and processors. See the
                    Javadoc of the class for more information.
                </p>
                        <p>
                            <em>Jetty 8 libraries are required to use Cling on Android, see the demo applications for Maven
                        dependencies!</em>
                        </p>
                        <p>
                    For example, these dependencies are usually required in a Maven POM for Cling to work on Android:
                </p>
                        <pre><![CDATA[<dependency>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-server</artifactId>
    <version>${jetty.version}</version>
</dependency>
<dependency>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-servlet</artifactId>
    <version>${jetty.version}</version>
</dependency>
<dependency>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-client</artifactId>
    <version>${jetty.version}</version>
</dependency>
<dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-jdk14</artifactId>
    <version>${slf4j.version}</version>
</dependency>]]></pre>
                        <p>
                    The service component starts and stops the UPnP system when the service component is created and
                    destroyed. This depends on how you access the service component from within your activities.
                </p>
                    </div>
                </div>
                <div class="section" id="section.Android.BindService">
                    <div class="title">5.2. Accessing the service from an activity</div>
                    <div class="content">
                        <p>
                    The lifecycle of service components in Android is well defined. The first activity which binds to a
                    service will start the service if it is not already running. When no activity is bound to the
                    service any more, the operating system will destroy the service.
                </p>
                        <p>
                    Let's write a simple UPnP browsing activity. It shows all devices on your network in a list and it
                    has a menu option which triggers a search action. The activity connects to the UPnP service and then
                    listens to any device additions or removals in the <code>Registry</code>, so the displayed list of
                    devices is kept up-to-date:
                </p>
                        <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.browser.BrowserActivity">
                            <div class="content">
                                <pre class="prettyprint">public class BrowserActivity extends ListActivity {

    private ArrayAdapter&lt;DeviceDisplay&gt; listAdapter;

    private BrowseRegistryListener registryListener = new BrowseRegistryListener();

    private AndroidUpnpService upnpService;

    private ServiceConnection serviceConnection = new ServiceConnection() {

        public void onServiceConnected(ComponentName className, IBinder service) {
            upnpService = (AndroidUpnpService) service;

            // Clear the list
            listAdapter.clear();

            // Get ready for future device advertisements
            upnpService.getRegistry().addListener(registryListener);

            // Now add all devices to the list we already know about
            for (Device device : upnpService.getRegistry().getDevices()) {
                registryListener.deviceAdded(device);
            }

            // Search asynchronously for all devices, they will respond soon
            upnpService.getControlPoint().search();
        }

        public void onServiceDisconnected(ComponentName className) {
            upnpService = null;
        }
    };

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Fix the logging integration between java.util.logging and Android internal logging
        org.seamless.util.logging.LoggingUtil.resetRootHandler(
            new FixedAndroidLogHandler()
        );
        // Now you can enable logging as needed for various categories of Cling:
        // Logger.getLogger("org.fourthline.cling").setLevel(Level.FINEST);

        listAdapter = new ArrayAdapter&lt;&gt;(this, android.R.layout.simple_list_item_1);
        setListAdapter(listAdapter);

        // This will start the UPnP service if it wasn't already started
        getApplicationContext().bindService(
            new Intent(this, AndroidUpnpServiceImpl.class),
            serviceConnection,
            Context.BIND_AUTO_CREATE
        );
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (upnpService != null) {
            upnpService.getRegistry().removeListener(registryListener);
        }
        // This will stop the UPnP service if nobody else is bound to it
        getApplicationContext().unbindService(serviceConnection);
    }
    // ...
}
</pre>
                            </div>
                        </div>
                        <p>
                    We utilize the default layout provided by the Android runtime and the <code>ListActivity</code>
                    superclass. Note that this activity can be your applications main activity, or further up
                    in the stack of a task. The <code>listAdapter</code> is the glue between the device additions
                    and removals on the Cling <code>Registry</code> and the list of items shown in the user interface.
                </p>
                        <div class="note">
                            <div class="title">Debug logging on Android</div>
                            <p>
                        Cling uses the standard JDK logging, <code>java.util.logging</code>. Unfortunately, by default
                        on Android you will not see <code>FINE</code>, <code>FINER</code>, and <code>FINEST</code> log
                        messages, as their built-in log handler is broken (or, so badly designed that it might as well
                        be broken). The easiest workaround is to set a custom log handler available in the
                        <code>FixedAndroidLogHandler</code> class.
                    </p>
                        </div>
                        <p>
                    The <code>upnpService</code> variable is <code>null</code> when no backend service is bound to this
                    activity. Binding and unbinding occurs in the <code>onCreate()</code> and <code>onDestroy()</code>
                    callbacks, so the activity is bound to the service as long as it is alive.
                </p>
                        <p>
                    Binding and unbinding the service is handled with the <code>ServiceConnection</code>:
                    On connect, first a listener is added to the <code>Registry</code> of the UPnP service. This
                    listener will process additions and removals of devices as they are discovered on your network, and
                    update the items shown in the user interface list. The <code>BrowseRegistryListener</code> is
                    removed when the activity is destroyed.
                </p>
                        <p>
                    Then any already discovered devices are added manually to the user interface, passing them
                    through the listener. (There might be none if the UPnP service was just started and no device
                    has so far announced its presence.) Finally, you start asynchronous discovery by sending a
                    search message to all UPnP devices, so they will announce themselves. This search message is
                    NOT required every time you connect to the service. It is only necessary once, to populate the
                    registry with all known devices when your (main) activity and application starts.
                </p>
                        <p>
                    This is the <code>BrowseRegistryListener</code>, its only job is to update the
                    displayed list items:
                </p>
                        <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.browser.BrowserActivity.BrowseRegistryListener">
                            <div class="content">
                                <pre class="prettyprint">protected class BrowseRegistryListener extends DefaultRegistryListener {

    /* Discovery performance optimization for very slow Android devices! */
    @Override
    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice device) {
        deviceAdded(device);
    }

    @Override
    public void remoteDeviceDiscoveryFailed(Registry registry, final RemoteDevice device, final Exception ex) {
        runOnUiThread(new Runnable() {
            public void run() {
                Toast.makeText(
                    BrowserActivity.this,
                    "Discovery failed of '" + device.getDisplayString() + "': "
                        + (ex != null ? ex.toString() : "Couldn't retrieve device/service descriptors"),
                    Toast.LENGTH_LONG
                ).show();
            }
        });
        deviceRemoved(device);
    }
    /* End of optimization, you can remove the whole block if your Android handset is fast (&gt;= 600 Mhz) */

    @Override
    public void remoteDeviceAdded(Registry registry, RemoteDevice device) {
        deviceAdded(device);
    }

    @Override
    public void remoteDeviceRemoved(Registry registry, RemoteDevice device) {
        deviceRemoved(device);
    }

    @Override
    public void localDeviceAdded(Registry registry, LocalDevice device) {
        deviceAdded(device);
    }

    @Override
    public void localDeviceRemoved(Registry registry, LocalDevice device) {
        deviceRemoved(device);
    }

    public void deviceAdded(final Device device) {
        runOnUiThread(new Runnable() {
            public void run() {
                DeviceDisplay d = new DeviceDisplay(device);
                int position = listAdapter.getPosition(d);
                if (position &gt;= 0) {
                    // Device already in the list, re-set new value at same position
                    listAdapter.remove(d);
                    listAdapter.insert(d, position);
                } else {
                    listAdapter.add(d);
                }
            }
        });
    }

    public void deviceRemoved(final Device device) {
        runOnUiThread(new Runnable() {
            public void run() {
                listAdapter.remove(new DeviceDisplay(device));
            }
        });
    }
}
</pre>
                            </div>
                        </div>
                        <p>
                    For performance reasons, when a new device has been discovered, we don't wait until a fully hydrated
                    (all services retrieved and validated) device metadata model is available. We react as quickly as
                    possible and don't wait until the <code>remoteDeviceAdded()</code> method will be called. We display
                    any device even while discovery is still running. You'd usually not care about this on a desktop
                    computer, however, Android handheld devices are slow and UPnP uses several bloated XML descriptors
                    to exchange metadata about devices and services. Sometimes it can take several seconds before a
                    device and its services are fully available. The <code>remoteDeviceDiscoveryStarted()</code> and
                    <code>remoteDeviceDiscoveryFailed()</code> methods are called as soon as possible in the discovery
                    process. On modern fast Android handsets, and unless you have to deal with dozens of UPnP devices
                    on a LAN, you don't need this optimization.
                </p>
                        <p>
                    By the way, devices are equal (<code>a.equals(b)</code>) if they have the same UDN, they might not
                    be identical (<code>a==b</code>).
                </p>
                        <p>
                    The <code>Registry</code> will call the listener methods in a separate thread. You have to update
                    the displayed list data in the thread of the user interface.
                </p>
                        <p>
                    The following methods on the activity add a menu with a search action, so a user can refresh the
                    list manually:
                </p>
                        <div class="citation javacode" id="org.fourthline.cling.demo.android.browser.BrowserActivity_menu">
                            <div class="content">
                                <pre class="prettyprint">public class BrowserActivity extends ListActivity {

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 0, 0, R.string.searchLAN).setIcon(android.R.drawable.ic_menu_search);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 0:
                if (upnpService == null)
                    break;
                Toast.makeText(this, R.string.searchingLAN, Toast.LENGTH_SHORT).show();
                upnpService.getRegistry().removeAllRemoteDevices();
                upnpService.getControlPoint().search();
                break;
        }
        return false;
    }
    // ...
}
</pre>
                            </div>
                        </div>
                        <p>
                    Finally, the <code>DeviceDisplay</code> class is a very simple JavaBean that only provides a
                    <code>toString()</code> method for rendering the list. You can display any information about UPnP
                    devices by changing this method:
                </p>
                        <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.browser.BrowserActivity.DeviceDisplay">
                            <div class="content">
                                <pre class="prettyprint">protected class DeviceDisplay {

    Device device;

    public DeviceDisplay(Device device) {
        this.device = device;
    }

    public Device getDevice() {
        return device;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeviceDisplay that = (DeviceDisplay) o;
        return device.equals(that.device);
    }

    @Override
    public int hashCode() {
        return device.hashCode();
    }

    @Override
    public String toString() {
        String name =
            getDevice().getDetails() != null &amp;&amp; getDevice().getDetails().getFriendlyName() != null
                ? getDevice().getDetails().getFriendlyName()
                : getDevice().getDisplayString();
        // Display a little star while the device is being loaded (see performance optimization earlier)
        return device.isFullyHydrated() ? name : name + " *";
    }
}
</pre>
                            </div>
                        </div>
                        <p>
                    We have to override the equality operations as well, so we can remove and add devices from the list
                    manually with the <code>DeviceDisplay</code> instance as a convenient handle.
                </p>
                        <p>
                    So far we have implemented a UPnP control point, next we create a UPnP device with services.
                </p>
                    </div>
                </div>
                <div class="section" id="section.Android.LocalDevice">
                    <div class="title">5.3. Creating a UPnP device</div>
                    <p>
                The following activity provides a UPnP service, the well known <em>SwitchPower:1</em> with a
                <em>BinaryLight:1</em> device:
            </p>
                    <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.light.LightActivity">
                        <div class="content">
                            <pre class="prettyprint">public class LightActivity extends Activity implements PropertyChangeListener {

    private AndroidUpnpService upnpService;

    private UDN udn = new UDN(UUID.randomUUID()); // TODO: Not stable!

    private ServiceConnection serviceConnection = new ServiceConnection() {

        public void onServiceConnected(ComponentName className, IBinder service) {
            upnpService = (AndroidUpnpService) service;

            LocalService&lt;SwitchPower&gt; switchPowerService = getSwitchPowerService();

            // Register the device when this activity binds to the service for the first time
            if (switchPowerService == null) {
                try {
                    LocalDevice binaryLightDevice = createDevice();

                    Toast.makeText(LightActivity.this, R.string.registeringDevice, Toast.LENGTH_SHORT).show();
                    upnpService.getRegistry().addDevice(binaryLightDevice);

                    switchPowerService = getSwitchPowerService();

                } catch (Exception ex) {
                    log.log(Level.SEVERE, "Creating BinaryLight device failed", ex);
                    Toast.makeText(LightActivity.this, R.string.createDeviceFailed, Toast.LENGTH_SHORT).show();
                    return;
                }
            }

            // Obtain the state of the power switch and update the UI
            setLightbulb(switchPowerService.getManager().getImplementation().getStatus());

            // Start monitoring the power switch
            switchPowerService.getManager().getImplementation().getPropertyChangeSupport()
                    .addPropertyChangeListener(LightActivity.this);

        }

        public void onServiceDisconnected(ComponentName className) {
            upnpService = null;
        }
    };

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.light);

        getApplicationContext().bindService(
                new Intent(this, AndroidUpnpServiceImpl.class),
                serviceConnection,
                Context.BIND_AUTO_CREATE
        );
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        // Stop monitoring the power switch
        LocalService&lt;SwitchPower&gt; switchPowerService = getSwitchPowerService();
        if (switchPowerService != null)
            switchPowerService.getManager().getImplementation().getPropertyChangeSupport()
                    .removePropertyChangeListener(this);

        getApplicationContext().unbindService(serviceConnection);
    }

    protected LocalService&lt;SwitchPower&gt; getSwitchPowerService() {
        if (upnpService == null)
            return null;

        LocalDevice binaryLightDevice;
        if ((binaryLightDevice = upnpService.getRegistry().getLocalDevice(udn, true)) == null)
            return null;

        return (LocalService&lt;SwitchPower&gt;)
                binaryLightDevice.findService(new UDAServiceType("SwitchPower", 1));
    }
    // ...
}
</pre>
                        </div>
                    </div>
                    <p>
                When the UPnP service is bound, for the first time, we check if the device has already been created by
                querying the <code>Registry</code>. If not, we create the device and add it to the
                <code>Registry</code>.
            </p>
                    <div class="note">
                        <div class="title">Generating a stable UDN on Android</div>
                        <p>
                    The UDN of a UPnP device is supposed to be stable: It should not change between restarts of the
                    device. Unfortunately, the Cling helper method <code>UDN.uniqueSystemIdentifier()</code> doesn't
                    work on Android, see its Javadoc. Generating a new UUID every time your activity starts might
                    be OK for testing, in production you should generate a UUID once when your application starts for
                    the first time and store the UUID value in your application's preferences.
                </p>
                    </div>
                    <p>
                The activity is also a JavaBean <code>PropertyChangeListener</code>, registered with
                <code>SwitchPower</code> service. Note that this is JavaBean eventing, it has nothing to do with UPnP
                GENA eventing! We monitor the state of the service and switch the UI accordingly, turning the light on
                and off:
            </p>
                    <div class="citation javacode" id="org.fourthline.cling.demo.android.light.LightActivity_propertyChange">
                        <div class="content">
                            <pre class="prettyprint">public class LightActivity extends Activity implements PropertyChangeListener {

    public void propertyChange(PropertyChangeEvent event) {
        // This is regular JavaBean eventing, not UPnP eventing!
        if (event.getPropertyName().equals("status")) {
            log.info("Turning light: " + event.getNewValue());
            setLightbulb((Boolean) event.getNewValue());
        }
    }

    protected void setLightbulb(final boolean on) {
        runOnUiThread(new Runnable() {
            public void run() {
                ImageView imageView = (ImageView) findViewById(R.id.light_imageview);
                imageView.setImageResource(on ? R.drawable.light_on : R.drawable.light_off);
                // You can NOT externalize this color into /res/values/colors.xml. Go on, try it!
                imageView.setBackgroundColor(on ? Color.parseColor("#9EC942") : Color.WHITE);
            }
        });
    }
    // ...
}
</pre>
                        </div>
                    </div>
                    <p>
                The <code>createDevice()</code> method simply instantiates a new <code>LocalDevice</code>:
            </p>
                    <div class="citation javacode" id="org.fourthline.cling.demo.android.light.LightActivity_createDevice">
                        <div class="content">
                            <pre class="prettyprint">public class LightActivity extends Activity implements PropertyChangeListener {

    protected LocalDevice createDevice()
            throws ValidationException, LocalServiceBindingException {

        DeviceType type =
                new UDADeviceType("BinaryLight", 1);

        DeviceDetails details =
                new DeviceDetails(
                        "Friendly Binary Light",
                        new ManufacturerDetails("ACME"),
                        new ModelDetails("AndroidLight", "A light with on/off switch.", "v1")
                );

        LocalService service =
                new AnnotationLocalServiceBinder().read(SwitchPower.class);

        service.setManager(
                new DefaultServiceManager&lt;&gt;(service, SwitchPower.class)
        );

        return new LocalDevice(
                new DeviceIdentity(udn),
                type,
                details,
                createDefaultDeviceIcon(),
                service
        );
    }
    // ...
}
</pre>
                        </div>
                    </div>
                    <p>
                For the <code>SwitchPower</code> class, again note the dual eventing for JavaBeans and UPnP:
            </p>
                    <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.light.SwitchPower">
                        <div class="content">
                            <pre class="prettyprint">@UpnpService(
        serviceId = @UpnpServiceId("SwitchPower"),
        serviceType = @UpnpServiceType(value = "SwitchPower", version = 1)
)
public class SwitchPower {

    private final PropertyChangeSupport propertyChangeSupport;

    public SwitchPower() {
        this.propertyChangeSupport = new PropertyChangeSupport(this);
    }

    public PropertyChangeSupport getPropertyChangeSupport() {
        return propertyChangeSupport;
    }

    @UpnpStateVariable(defaultValue = "0", sendEvents = false)
    private boolean target = false;

    @UpnpStateVariable(defaultValue = "0")
    private boolean status = false;

    @UpnpAction
    public void setTarget(@UpnpInputArgument(name = "NewTargetValue") boolean newTargetValue) {
        boolean targetOldValue = target;
        target = newTargetValue;
        boolean statusOldValue = status;
        status = newTargetValue;

        // These have no effect on the UPnP monitoring but it's JavaBean compliant
        getPropertyChangeSupport().firePropertyChange("target", targetOldValue, target);
        getPropertyChangeSupport().firePropertyChange("status", statusOldValue, status);

        // This will send a UPnP event, it's the name of a state variable that sends events
        getPropertyChangeSupport().firePropertyChange("Status", statusOldValue, status);
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "RetTargetValue"))
    public boolean getTarget() {
        return target;
    }

    @UpnpAction(out = @UpnpOutputArgument(name = "ResultStatus"))
    public boolean getStatus() {
        return status;
    }
}
</pre>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.Android.Optimize">
                    <div class="title">5.4. Optimizing service behavior</div>
                    <div class="content">
                        <p>
                    The UPnP service consumes memory and CPU time while it is running. Although this is typically not an
                    issue on a regular machine, this might be a problem on an Android handset. You can preserve memory
                    and handset battery power if you disable certain features of the Cling UPnP service, or if you even
                    pause and resume it when appropriate.
                </p>
                        <p>
                    Furthermore, some Android handsets do not support multicast networking (HTC phones, for example), so
                    you have to configure Cling accordingly on such a device and disable most of the UPnP discovery
                    protocol.
                </p>
                        <div class="section" id="section.Android.Optimize.MaintainRegistry">
                            <div class="title">5.4.1. Tuning registry maintenance</div>
                            <div class="content">
                                <p>
                            There are several things going on in the background while the service is running. First,
                            there is the registry of the service and its maintenance thread. If you are writing a
                            control point, this background registry maintainer is going to renew your outbound GENA
                            subscriptions with remote services periodically. It will also expire and remove any
                            discovered remote devices when the drop off the network without saying goodbye. If you are
                            providing a local service, your device announcements will be refreshed by the registry
                            maintainer and inbound GENA subscriptions will be removed if they haven't been renewed in
                            time. Effectively, the registry maintainer prevents stale state on the UPnP network, so all
                            participants have an up-to-date view of all other participants, and so on.
                        </p>
                                <p>
                            By default the registry maintainer will run every second and check if there is something to
                            do (most of the time there is nothing to do, of course). The default Android configuration
                            however has a default sleep interval of three seconds, so it is already consuming less
                            background CPU time - while your application might be exposed to somewhat outdated
                            information. You can further tune this setting by overriding the
                            <code>getRegistryMaintenanceIntervalMillis()</code> in the
                            <code>UpnpServiceConfiguration</code>. On Android, you have to subclass the
                            service implementation to provide a new configuration:
                        </p>
                                <div class="citation javacode" id="javacode.org.fourthline.cling.demo.android.browser.BrowserUpnpService">
                                    <div class="content">
                                        <pre class="prettyprint">public class BrowserUpnpService extends AndroidUpnpServiceImpl {

    @Override
    protected UpnpServiceConfiguration createConfiguration() {
        return new AndroidUpnpServiceConfiguration() {

            @Override
            public int getRegistryMaintenanceIntervalMillis() {
                return 7000;
            }

        };
    }
}
</pre>
                                    </div>
                                </div>
                                <p>
                            Don't forget to now configure <code>BrowserUpnpService</code> in your
                            <code>AndroidManifest.xml</code> instead of the original implementation. You also have to
                            use this class when binding to the service in your activities instead of
                            <code>AndroidUpnpServiceImpl</code>.
                        </p>
                            </div>
                        </div>
                        <div class="section" id="section.Android.Optimize.PauseRegistry">
                            <div class="title">5.4.2. Pausing and resuming registry maintenance</div>
                            <div class="content">
                                <p>
                            Another more effective but also more complex optimization is pausing and resuming the
                            registry whenever your activities no longer need the UPnP service. This is typically the
                            case when an activity is no longer in the foreground (paused) or even no longer visible
                            (stopped). By default any activity state change has no impact on the state of the UPnP
                            service unless you bind and unbind from and to the service in your activities
                            lifecycle callbacks.
                        </p>
                                <p>
                            In addition to binding and unbinding from the service you can also pause its registry by
                            calling <code>Registry#pause()</code> when your activity's <code>onPause()</code> or
                            <code>onStop()</code> method is called. You can then resume the background service
                            maintenance (thread) with <code>Registry#resume()</code>, or check the status with
                            <code>Registry#isPaused()</code>.
                        </p>
                                <p>
                            Please read the Javadoc of these methods for more details and what consequences pausing
                            registry maintenance has on devices, services, and GENA subscriptions. Depending on what
                            your application does, this rather minor optimization might not be worth dealing with these
                            effects. On the other hand, your application should already be able to handle failed GENA
                            subscription renewals, or disappearing remote devices!
                        </p>
                            </div>
                        </div>
                        <div class="section" id="section.Android.Optimize.Discovery">
                            <div class="title">5.4.3. Configuring discovery</div>
                            <div class="content">
                                <p>
                            The most effective optimization is selective discovery of UPnP devices. Although the UPnP
                            service's network transport layer will keep running (threads are waiting and sockets are
                            bound) in the background, this feature allows you to drop discovery messages selectively and
                            quickly.
                        </p>
                                <p>
                            For example, if you are writing a control point, you can drop any received discovery message
                            if it doesn't advertise the service you want to control - you are not interested in any
                            other device. On the other hand if you only <em>provide</em> devices and services, all
                            discovery messages (except search messages for your services) can probably be dropped, you
                            are not interested in any remote devices and their services at all.
                        </p>
                                <p>
                            Discovery messages are selected and potentially dropped by Cling as soon as the UDP datagram
                            content is available, so no further parsing and processing is needed and CPU time/memory
                            consumption is significantly reduced while you keep the UPnP service running even in the
                            background on an Android handset.
                        </p>
                                <p>
                            To configure which services are supported by your control point application, override the
                            configuration and provide an array of <code>ServiceType</code> instances:
                        </p>
                                <div class="citation javacode" id="org.fourthline.cling.demo.android.browser.BrowserUpnpService_serviceType">
                                    <div class="content">
                                        <pre class="prettyprint">public class BrowserUpnpService extends AndroidUpnpServiceImpl {

    @Override
    protected UpnpServiceConfiguration createConfiguration() {
        return new AndroidUpnpServiceConfiguration() {

            @Override
            public ServiceType[] getExclusiveServiceTypes() {
                return new ServiceType[]{
                    new UDAServiceType("SwitchPower")
                };
            }
        };
    }
}
</pre>
                                    </div>
                                </div>
                                <p>
                            This configuration will ignore any advertisement from any device that doesn't also advertise
                            a <em>schemas-upnp-org:SwitchPower:1</em> service. This is what our control point can
                            handle, so we don't need anything else. If instead you'd return an empty array (the default
                            behavior), all services and devices will be discovered and no advertisements will be
                            dropped.
                        </p>
                                <p>
                            If you are not writing a control point but a server application, you can return
                            <code>null</code> in the <code>getExclusiveServiceTypes()</code> method. This will disable
                            discovery completely, now all device and service advertisements are dropped as soon as they
                            are received.
                        </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div xmlns:xi="http://www.w3.org/2001/XInclude" class="chapter" id="chapter.Advanced">
            <div class="title">6. Advanced options</div>
            <div class="content">
                <div class="chapter" id="chapter.ClientInfo">
                    <div class="title">6.1. Custom client/server information</div>
                    <div class="content">
                        <p>
            Sometimes your service has to implement different procedures depending on the client who
            makes the action request, or you want to send a request with some identifying information
            about your client.
        </p>
                        <div class="section" id="section.ExtraRequestHeaders">
                            <div class="title">6.1.1. Adding extra request headers</div>
                            <div class="content">
                                <p>
                    By default, Cling will add all necessary headers to all outbound request messages.
                    For HTTP-based messages such as descriptor retrieval, action invocation, and GENA
                    messages, the <code>User-Agent</code> HTTP header will be set to a default value,
                    obtained from your <code>StreamClientConfiguration</code>.
                </p>
                                <p>
                    You can override this behavior for descriptor retrieval and GENA subscription messages
                    with a custom configuration. For example, this configuration will send extra HTTP headers
                    when device and service descriptors have to be retrieved for a particular UDN:
                </p>
                                <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {

        @Override
        public UpnpHeaders getDescriptorRetrievalHeaders(RemoteDeviceIdentity identity) {
            if (identity.getUdn().getIdentifierString().equals("aa-bb-cc-dd-ee-ff")) {
                UpnpHeaders headers = new UpnpHeaders();
                headers.add(UpnpHeader.Type.USER_AGENT.getHttpName(), "MyCustom/Agent");
                headers.add("X-Custom-Header", "foo");
                return headers;
            }
            return null;
        }
    }
);]]></pre>
                                <p>
                    For GENA subscription, renewal, and unsubscribe messages, you can set extra headers
                    depending on the service you are subscribing to:
                </p>
                                <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {

        @Override
        public UpnpHeaders getEventSubscriptionHeaders(RemoteService service) {
            if (service.getServiceType().implementsVersion(new UDAServiceType("Foo", 1))) {
                UpnpHeaders headers = new UpnpHeaders();
                headers.add("X-Custom-Header", "bar");
                return headers;
            }
            return null;
        }
    }
);]]></pre>
                                <p>
                    For action invocations to remote services, you can set custom headers when
                    constructing the <code>ActionInvocation</code>:
                </p>
                                <pre><![CDATA[UpnpHeaders extraHeaders = new UpnpHeaders();
extraHeaders.add(UpnpHeader.Type.USER_AGENT.getHttpName(), "MyCustom/Agent");
extraHeaders.add("X-Custom-Header", "foo");

ActionInvocation actionInvocation =
    new ActionInvocation(
        action,
        new ClientInfo(extraHeaders)
    );]]></pre>
                                <p>
                    Any of these settings only affect outbound request messages! Any outbound
                    response to a remote request will have only headers required by the UPnP protocols.
                    See the next section on how to customize response headers for remote action requests.
                </p>
                                <p>
                    Very rarely you have to customize SSDP (MSEARCH and its response) messages. First,
                    subclass the default <code>ProtocolFactoryImpl</code> and override the instantiation
                    of the protocols as necessary. For example, override <code>createSendingSearch()</code>
                    and return your own instance of the <code>SendingSearch</code> protocol.
                    Next, override <code>prepareOutgoingSearchRequest(OutgoingSearchRequest)</code> of
                    the <code>SendingSearch</code> protocol and modify the message. The same procedure can
                    be applied to customize search responses with the <code>ReceivingSearch</code> protocol.
                </p>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.localservice.RemoteClientInfoTest">
                                <div class="title">6.1.2. Accessing remote client information</div>
                                <div class="content">
                                    <p>
 Theoretically, your service implementation should work with any client, as UPnP is
 supposed to provide a compatibility layer. In practice, this never works as no
 UPnP client and server is fully compatible with the specifications (except Cling, of
 course).
 </p>
                                    <p>
 If your action method has a last (or only parameter) of type <code>RemoteClientInfo</code>,
 Cling will provide details about the control point calling your service:
 </p>
                                    <div class="citation javacode" id="javacode.example.localservice.SwitchPowerWithClientInfo">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpAction
public void setTarget(@UpnpInputArgument(name = "NewTargetValue")
                      boolean newTargetValue,
                      RemoteClientInfo clientInfo) {
    power = newTargetValue;
    System.out.println("Switch is: " + power);

    if (clientInfo != null) {
        System.out.println(
            "Client's address is: " + clientInfo.getRemoteAddress()
        );
        System.out.println(
            "Received message on: " + clientInfo.getLocalAddress()
        );
        System.out.println(
            "Client's user agent is: " + clientInfo.getRequestUserAgent()
        );
        System.out.println(
            "Client's custom header is: " +
            clientInfo.getRequestHeaders().getFirstHeader("X-MY-HEADER")
        );

        // Return some extra headers in the response
        clientInfo.getExtraResponseHeaders().add("X-MY-HEADER", "foobar");
    }
}
</pre>
                                        </div>
                                    </div>
                                    <p>
 The <code>RemoteClientInfo</code> argument will only be available when this action method
 is processing a remote client call, an <code>ActionInvocation</code> executed by the
 local UPnP stack on a local service does not have remote client information and the
 argument will be <code>null</code>.
 </p>
                                    <p>
 A client's remote and local address might be <code>null</code> if the Cling
 transport layer was not able to obtain the connection's address.
 </p>
                                    <p>
 You can set extra response headers on the <code>RemoteClientInfo</code>, which will be
 returned to the client with the response of your UPnP action. There is also a
 <code>setResponseUserAgent()</code> method for your convenience.
 </p>
                                </div>
                            </div>
                        </div>
                        <p>
            The <code>RemoteClientInfo</code> is also useful if you have to deal with potentially long-running
            actions.
        </p>
                    </div>
                </div>
                <div class="section" id="section.LongRunningActions">
                    <div class="title">6.2. Long-running actions</div>
                    <div class="content">
                        <p>
            An action of a service might take a long time to complete and consume resources. For example, if your
            service has to process significant amounts of data, you might want to stop processing when the client
            calling your action is actually no longer connected. On the client side, you might want to give your users
            the option to interrupt and abort action requests if the service takes too long to respond. These are
            two distinct issues, and we'll first look at it from the client's perspective.
        </p>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.controlpoint.ActionCancellationTest">
                                <div class="title">6.2.1. Cancelling an action invocation</div>
                                <div class="content">
                                    <p>
 You call actions of services with the <code>ControlPoint#execute(myCallback)</code> method. So far you probably
 haven't considered the optional return value of this method, a <code>Future</code> which can be used to cancel
 the invocation:
 </p>
                                    <p/>
                                    <div class="citation javacode" id="javacode.example.controlpoint.ActionCancellationTest.invokeActions.LocalDevice.">
                                        <div class="content">
                                            <pre class="prettyprint">Future future = upnpService.getControlPoint().execute(setTargetCallback);
Thread.sleep(500);
future.cancel(true);
</pre>
                                        </div>
                                    </div>
                                    <p/>
                                    <p>
 Here we are calling the <code>SetTarget</code> action of a <em>SwitchPower:1</em> service, and after waiting a
 (short) time period, we cancel the request. What happens now depends on the invocation and what service you are
 calling. If it's a local service, and no network access is needed, the thread calling the local service (method)
 will simply be interrupted. If you are calling a remote service, Cling will abort the HTTP request to the server.
 </p>
                                    <p>
 Most likely you want to handle this explicit cancellation of an action call in your action invocation callback, so
 you can present the result to your user. Override the <code>failure()</code> method to handle the interruption:
 </p>
                                    <p/>
                                    <div class="citation javacode" id="ActionCancellationTest_invokeActions2">
                                        <div class="content">
                                            <pre class="prettyprint">ActionCallback setTargetCallback = new ActionCallback(setTargetInvocation) {

    @Override
    public void success(ActionInvocation invocation) {
        // Will not be called if invocation has been cancelled
    }

    @Override
    public void failure(ActionInvocation invocation,
                        UpnpResponse operation,
                        String defaultMsg) {
        if (invocation.getFailure() instanceof ActionCancelledException) {
            // Handle the cancellation here...
        }
    }
};
</pre>
                                        </div>
                                    </div>
                                    <p>
 A special exception type is provided if the action call was indeed cancelled.
 </p>
                                    <p>
 Several important issues have to be considered when you try to cancel action calls to remote services:
 </p>
                                    <p>
 There is no guarantee that the server will actually stop processing your request. When the client closes the
 connection, the server doesn't get notified. The server will complete the action call and only fail when trying to
 return the response to the client on the closed connection. Cling's server transports offer a special heartbeat
 feature for checking client connections, we'll discuss this feature later in this chapter. Other UPnP servers will
 most likely not detect a dropped client connection immediately.
 </p>
                                    <p>
 Not all HTTP client transports in Cling support interruption of requests:
 </p>
                                    <table border="1" class="infotable fullwidth">
                                        <thead>
                                            <tr>
                                                <th>Transport</th>
                                                <th class="thirdwidth">Supports Interruption?</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.StreamClientImpl (default)</code>
                                                </td>
                                                <td>NO</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.apache.StreamClientImpl</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.jetty.StreamClientImpl (default on Android)</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p>
 Transports which do not support cancellation won't produce an error when you abort an action invocation, they
 silently ignore the interruption and continue waiting for the server to respond.
 </p>
                                </div>
                            </div>
                        </div>
                        <div class="section">
                            <div class="citation javadoc" id="javadoc.example.controlpoint.SwitchPowerWithInterruption">
                                <div class="title">6.2.2. Reacting to cancellation on the server</div>
                                <div class="content">
                                    <p>
 By default, an action method of your service will run until it completes, it either returns or throws an exception.
 If you have to perform long-running tasks in a service, your action method can avoid doing unnecessary work by
 checking if processing should continue. Think about processing in batches: You work for a while, then you check if
 you should continue, then you work some more, check again, and so on.
 </p>
                                    <p>
 There are two checks you have to perform:
 </p>
                                    <ul>
                                        <li>
 If a local control point called your service, and meanwhile cancelled the action call, the thread running your action
 method will have its interruption flag set. When you see this flag you can stop processing, as any result of your
 action method will be ignored anyway.
 </li>
                                        <li>
 If a remote control point called your service, it might have dropped the connection while you were processing data
 to return. Unfortunately, checking if the client's connection is still open requires, on a TCP level, writing data
 on the socket. This is essentially a heartbeat signal: Every time you check if the client is still there, a byte of
 (hopefully) insignificant data will be send to the client. If there wasn't any error sending data, the connection
 is still alive.
 </li>
                                    </ul>
                                    <p>
 These checks look as follows in your service method:
 </p>
                                    <div class="citation javacode" id="javacode.example.controlpoint.SwitchPowerWithInterruption">
                                        <div class="content">
                                            <pre class="prettyprint">@UpnpAction
public void setTarget(@UpnpInputArgument(name = "NewTargetValue") boolean newTargetValue,
                      RemoteClientInfo remoteClientInfo) throws InterruptedException {

    boolean interrupted = false;
    while (!interrupted) {
        // Do some long-running work and periodically test if you should continue...

        // ... for local service invocation
        if (Thread.interrupted())
            interrupted = true;

        // ... for remote service invocation
        if (remoteClientInfo != null &amp;&amp; remoteClientInfo.isRequestCancelled())
            interrupted = true;
    }
    throw new InterruptedException("Execution interrupted");
}
</pre>
                                        </div>
                                    </div>
                                    <p>
 You abort processing by throwing an <code>InterruptedException</code>, Cling will do the rest. Cling will send
 a heartbeat to the client whenever you check if the remote request was cancelled with the optional
 <code>RemoteClientInfo</code>, see <a href="#javadoc.example.localservice.RemoteClientInfoTest">this section</a>.
 </p>
                                    <p>
                                        <em>Danger:</em> Not all HTTP clients can deal with Cling's heartbeat signal. Not even all bundled
 <code>StreamClient</code>'s of Cling can handle such a signal. You should only use this feature if you are sure that
 all clients of your service will ignore the meaningless heartbeat signal. Cling sends a space character (this is
 configurable) to the HTTP client to check the connection. Hence, the HTTP client sees a response such as
 '[space][space][space]HTTP/1.0', with a space character for each alive check. If your HTTP client does not trim those
 space characters before parsing the response, it will fail processing your otherwise valid response.
 </p>
                                    <p>
 The following Cling-bundled client transports can deal with a heartbeat signal:
 </p>
                                    <table border="1" class="infotable fullwidth">
                                        <thead>
                                            <tr>
                                                <th>Transport</th>
                                                <th class="thirdwidth">Accepts Heartbeat?</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.StreamClientImpl (default)</code>
                                                </td>
                                                <td>NO</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.apache.StreamClientImpl</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.jetty.StreamClientImpl (default on Android)</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p>
 Equally important, not all server transports in Cling can send heartbeat signals, as low-level socket access is
 required. Some server APIs do not provide this low-level access. If you check the connection state with those
 transports, the connection is always "alive":
 </p>
                                    <table border="1" class="infotable fullwidth">
                                        <thead>
                                            <tr>
                                                <th>Transport</th>
                                                <th class="thirdwidth">Sends Heartbeat?</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.StreamServerImpl (default)</code>
                                                </td>
                                                <td>NO</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.apache.StreamServerImpl</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                            <tr>
                                                <td class="nowrap">
                                                    <code>org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl</code>
                                                    <br/>
 with <code>org.fourthline.cling.transport.impl.jetty.JettyServletContainer (default on Android)</code>
                                                </td>
                                                <td>YES</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p>
 In practice, this heartbeat feature is less useful than it sounds in theory: As you usually don't control which HTTP
 clients will access your server, sending them "garbage" bytes before responding properly will most likely cause
 interoperability problems.
 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.SwitchingXMLDescriptorBinders">
                    <div class="title">6.3. Switching XML descriptor binders</div>
                    <div class="content">
                        <p>
            UPnP utilizes XML documents to transport device and service information between the provider and
            any control points. These XML documents have to be parsed by Cling to produce the
            <code>Device</code> model, and of course generated from a <code>Device</code> model.
            The same approach is used for the <code>Service</code> model. This parsing, generating, and binding
            is the job of the <code>org.fourthline.cling.binding.xml.DeviceDescriptorBinder</code> and the
            <code>org.fourthline.cling.binding.xml.ServiceDescriptorBinder</code>.
        </p>
                        <p>
            The following implementations are bundled with Cling Core for device descriptor binding:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.binding.xml.UDA10DeviceDescriptorBinderImpl</code> (default)</dt>
                            <dd>
                This implementation reads and writes UDA 1.0 descriptor XML with the JAXP-provided DOM API
                provided by JDK 6. You do not need any additional libraries to use this binder. Use this binder
                to validate strict specification compliance of your applications.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.binding.xml.UDA10DeviceDescriptorBinderSAXImpl</code>
                            </dt>
                            <dd>
                This implementation reads and writes UDA 1.0 descriptor XML with the JAXP-provided SAX API, you
                don't have to install additional libraries to use it. This binder may consume less memory when
                reading XML descriptors and perform better than the DOM-based parser. In practice, the
                difference is usually insignificant, even on very slow machines.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl</code>
                            </dt>
                            <dd>
                This implementation extends <code>UDA10DeviceDescriptorBinderImpl</code> and tries to recover
                from parsing failures, and works around known problems of other UPnP stacks. This is the binder
                you want for best interoperability in real-world UPnP applications. Furthermore, you can
                override the <code>handleInvalidDescriptor()</code> and <code>handleInvalidDevice()</code>
                methods to customize error handling, or if you want to repair invalid device information
                manually. It is the default binder for <code>AndroidUpnpServiceConfiguration</code>.
            </dd>
                        </dl>
                        <p>
            The following implementations are bundled with Cling Core for service descriptor binding:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderImpl</code> (default)</dt>
                            <dd>
                This implementation reads and writes UDA 1.0 descriptor XML with the JAXP-provided DOM API
                provided by JDK 6. You do not need any additional libraries to use this binder. Use this binder
                to validate strict specification compliance of your applications.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl</code>
                            </dt>
                            <dd>
                This implementation reads and writes UDA 1.0 descriptor XML with the JAXP-provided SAX API, you
                don't have to install additional libraries to use it. This binder may consume less memory when
                reading XML descriptors and perform better than the DOM-based parser. In practice, the
                difference is usually insignificant, even on very slow machines. It is the default binder for
                <code>AndroidUpnpServiceConfiguration</code>.
            </dd>
                        </dl>
                        <p>
            You can switch descriptor binders by overriding the <code>UpnpServiceConfiguration</code>:
        </p>
                        <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {
    
        @Override
        public DeviceDescriptorBinder getDeviceDescriptorBinderUDA10() {
            // Recommended for best interoperability with broken UPnP stacks!
            return new RecoveringUDA10DeviceDescriptorBinderImpl();
        }
    
        @Override
        public ServiceDescriptorBinder getServiceDescriptorBinderUDA10() {
            return new UDA10ServiceDescriptorBinderSAXImpl();
        }
    
    }
);]]></pre>
                        <p>
            Performance problems with UPnP discovery are usually caused by too many XML descriptors, not
            by their size. This is inherent in the bad design of UPnP; each device may expose many individual
            service descriptors, and Cling will always retrieve all device metadata. The HTTP requests
            necessary to retrieve dozens of descriptor files usually outweighs the cost of parsing each.
        </p>
                        <p>
            Note that binders are only used for device and service descriptors, not for UPnP action and event
            message processing.
        </p>
                    </div>
                </div>
                <div class="section" id="section.SwitchingXMLProcessors">
                    <div class="title">6.4. Switching XML processors</div>
                    <div class="content">
                        <p>
            All control and event UPnP messages have an XML payload, and the control messages are even
            wrapped in SOAP envelopes. Handling XML for control and eventing is encapsulated in the Cling
            transport layer, with an extensible service provider interface:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.transport.spi.SOAPActionProcessor</code>
                            </dt>
                            <dd>
                This processor reads and writes UPnP SOAP messages and transform them from/to
                <code>ActionInvocation</code> data. The protocol layer, on top of the transport layer,
                handles <code>ActionInvocation</code> only.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.spi.GENAEventProcessor</code>
                            </dt>
                            <dd>
                This processor reads and writes UPnP GENA event messages and transform them
                from/to a <code>List&lt;StateVariableValue&gt;</code>.
            </dd>
                        </dl>
                        <p>
            For the <code>SOAPActionProcessor</code>, the following implementations are bundled
            with Cling Core:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.SOAPActionProcessorImpl</code> (default)</dt>
                            <dd>
                This implementation reads and writes XML with the JAXP-provided DOM API provided by JDK 6.
                You do not need any additional libraries to use this processor. However, its strict compliance
                with the UPnP specification can cause problems in real-world UPnP applications. This processor
                will produce errors during reading when XML messages violate the UPnP specification. Use it
                to test a UPnP stack or application for strict specification compliance.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl</code>
                            </dt>
                            <dd>
                This processor uses the XML Pull API to read messages, and the JAXP DOM API to write messages.
                You need an implementation of the XML Pull API on your classpath to use this processor, for
                example, <a href="http://www.extreme.indiana.edu/xgws/xsoap/xpp/mxp1/index.html">XPP3</a>
                or <a href="http://kxml.sourceforge.net/kxml2/">kXML 2</a>. Compared with the default processor,
                this processor is much more lenient when reading action message XML. It can deal with broken
                namespacing, missing SOAP envelopes, and other problems. In UPnP applications where
                interoperability is more important than specification compliance, you should use this parser.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.RecoveringSOAPActionProcessorImpl</code>
                            </dt>
                            <dd>
                This processor extends the <code>PullSOAPActionProcessorImpl</code> and additionally will
                work around known bugs of UPnP stacks in the wild and try to recover from parsing failures by
                modifying the XML text in different ways. This is the processor you should use for best
                interoperability with other (broken) UPnP stacks. Furthermore, it let's you handle a failure
                when reading an XML message easily by overriding the <code>handleInvalidMessage()</code> method,
                e.g. to create or log an error report. It is the default processor for
                <code>AndroidUpnpServiceConfiguration</code>.
            </dd>
                        </dl>
                        <p>
            For the <code>GENAEventProcessor</code>, the following implementations are bundled
            with Cling Core:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.GENAEventProcessorImpl</code> (default)</dt>
                            <dd>
                This implementation reads and writes XML with the JAXP-provided DOM API provided by JDK 6.
                You do not need any additional libraries to use this processor. However, its strict compliance
                with the UPnP specification can cause problems in real-world UPnP applications. This processor
                will produce errors during reading when XML messages violate the UPnP specification. Use it
                to test a UPnP stack or application for strict specification compliance.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.PullGENAEventProcessorImpl</code>
                            </dt>
                            <dd>
                This processor uses the XML Pull API to read messages, and the JAXP DOM API to write messages.
                You need an implementation of the XML Pull API on your classpath to use this processor, for
                example, <a href="http://www.extreme.indiana.edu/xgws/xsoap/xpp/mxp1/index.html">XPP3</a>
                or <a href="http://kxml.sourceforge.net/kxml2/">kXML 2</a>. Compared with the default processor,
                this processor is much more lenient when reading action message XML. It can deal with broken
                namespacing, missing root element, and other problems. In UPnP applications where
                compatibility is more important than specification compliance, you should use this parser.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.RecoveringGENAEventProcessorImpl</code>
                            </dt>
                            <dd>
                This processor extends the <code>PullGENAEventProcessorImpl</code> and additionally will
                work around known bugs of UPnP stacks in the wild and try to recover from parsing failures by
                modifying the XML text in different ways. This is the processor you should use for best
                interoperability with other (broken) UPnP stacks. Furthermore, it will return partial results,
                when at least one single state variable value was successfully read from the event XML.
                It is the default processor for <code>AndroidUpnpServiceConfiguration</code>.
            </dd>
                        </dl>
                        <p>
            You can switch XML processors by overriding the <code>UpnpServiceConfiguration</code>:
        </p>
                        <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {

        @Override
        public SOAPActionProcessor getSoapActionProcessor() {
            // Recommended for best interoperability with broken UPnP stacks!
            return new RecoveringSOAPActionProcessorImpl();
        }

        @Override
        public GENAEventProcessor getGenaEventProcessor() {
            // Recommended for best interoperability with broken UPnP stacks!
            return new RecoveringGENAEventProcessorImpl();
        }
    }
);]]></pre>
                    </div>
                </div>
                <div class="section" id="section.DiscoveryProblems">
                    <div class="title">6.5. Solving discovery problems</div>
                    <div class="content">
                        <p>
            Device discovery in UPnP is the job of SSDP, the Simple Service Discovery Protocol. Of course, this
            protocol is not simple at all and many device manufacturers and UPnP stacks get it wrong. Cling has
            some extra settings to deal with such environments; if you want best interoperability for your
            application, you have to read the following sections.
        </p>
                        <div class="section" id="section.RemoteMaxAge">
                            <div class="title">6.5.1. Maximum age of remote devices</div>
                            <div class="content">
                                <p>
                    If you are writing a control point and remote devices seem to randomly disappear from
                    your <code>Registry</code>, you are probably dealing with a remote device that doesn't
                    send regular alive NOTIFY heartbeats through multicast. Or, your control point runs on
                    a device that doesn't properly receive multicast messages. (Android devices from HTC
                    are known to have this issue.)
                </p>
                                <p>
                    Cling will usually expire remote devices once their initially advertised "maximum age"
                    has been reached and there was no ALIVE message to refresh the advertisement. You can
                    change this behavior with <code>UpnpServiceConfiguration</code>:
                </p>
                                <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {

        @Override
        public Integer getRemoteDeviceMaxAgeSeconds() {
            return 0;
        }
    }
);]]></pre>
                                <p>
                    If you return zero maximum age, all remote devices will forever stay in your
                    <code>Registry</code> once they have been discovered, Cling will not expire them. You have
                    to manually remove them from the <code>Registry</code> if you know they are gone (e.g. once
                    an action request fails with "no response").
                </p>
                                <p>
                    Alternatively, you can return the number of seconds Cling should keep a remote device
                    in the <code>Registry</code>, ignoring the device's advertised maximum age.
                </p>
                            </div>
                        </div>
                        <div class="section" id="section.AliveInterval">
                            <div class="title">6.5.2. Alive messages at regular intervals</div>
                            <div class="content">
                                <p>
                    Some control points have difficulties with M-SEARCH responses. They search for
                    your device, then can't process the (specification-compliant) response made by Cling and
                    therefore don't discover your device when they search. However, such control points
                    typically have no problem with alive NOTIFY messages, only with search responses.
                </p>
                                <p>
                    The solution then is to repeat alive NOTIFY messages for all your local devices on the
                    network very frequently, let's say every 5 seconds:
                </p>
                                <pre><![CDATA[UpnpService upnpService = new UpnpServiceImpl(
    new DefaultUpnpServiceConfiguration() {

        @Override
        public int getAliveIntervalMillis() {
            return 5000;
        }
    }
);]]></pre>
                                <p>
                    By default this method returns <code>0</code>, disabling alive message flooding and relying
                    on the regular triggering of local device advertisements (which depends on the maximum age of
                    each <code>LocalDeviceIdentity</code>).
                </p>
                                <p>
                    If you return a non-zero value, Cling will send alive NOTIFY messages repeatedly with the
                    given interval, and remote control points should be able to discover your device within
                    that period. The downside is of course more traffic on your network.
                </p>
                            </div>
                        </div>
                        <div class="section" id="section.DiscoveryOptions">
                            <div class="title">6.5.3. Using discovery options for local devices</div>
                            <div class="content">
                                <p>
                    If you create a <code>LocalDevice</code> that you don't want to announce to
                    remote control points, add it to the <code>Registry</code> with
                    <code>addDevice(localDevice, new DiscoveryOptions(false))</code>.
                </p>
                                <p>
                    The <code>DiscoveryOptions</code> class offers several parameters to influence
                    how Cling handles device discovery.
                </p>
                                <p>
                    With disabled advertising, Cling will then not send <em>any</em> NOTIFY messages for
                    a device; you can enable advertisement again with
                    <code>Registry#setDiscoveryOptions(UDN, null)</code>, or by providing different options.
                </p>
                                <p>
                    Note that remote control points will still be able to discover your device if they
                    know your device descriptor URL. They will also be able to call actions and
                    subscribe to services. This is not a switch to make a <code>LocalDevice</code>
                    "private", it only disables (multicast) advertising.
                </p>
                                <p>
                    A rarely used setting of <code>DiscoveryOptions</code> is <code>byeByeBeforeFirstAlive</code>:
                    If enabled, Cling will send a byebye NOTIFY message before sending the first alive NOTIFY
                    message. This happens only once, when a <code>LocalDevice</code> is added to the
                    <code>Registry</code>, and it wasn't registered before.
                </p>
                            </div>
                        </div>
                        <div class="section" id="section.ManualAdvertisement">
                            <div class="title">6.5.4. Manual advertisement of local devices</div>
                            <div class="content">
                                <p>
                    You can force immediate advertisement of all registered <code>LocalDevice</code>s
                    with <code>Registry#advertiseLocalDevices()</code>. Note that no announcements
                    will be made for any device with disabled advertising (see previous section).
                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="section.ConfiguringTransports">
                    <div class="title">6.6. Configuring network transports</div>
                    <div class="content">
                        <p>
            Cling has to accept and make HTTP requests to implement UPnP discovery, action processing, and
            GENA eventing. This is the job of the <code>StreamServer</code> and <code>StreamClient</code>
            implementations, working together with the <code>Router</code> as the Cling network transport
            layer.
        </p>
                        <p>
            For the <code>StreamClient</code> SPI, the following implementations are bundled with Cling:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.StreamClientImpl</code> (default)</dt>
                            <dd>
                This implementation uses the JDK's <code>HTTPURLConnection</code>, it doesn't require any additional
                libraries. Note that Cling has to customize (with an ugly hack, really) the VM's
                <code>URLStreamHandlerFactory</code> to support additional HTTP methods such as <code>NOTIFY</code>,
                <code>SUBSCRIBE</code>, and <code>UNSUBSCRIBE</code>. The designers of the JDK do not understand HTTP
                very well and made this extremely difficult to extend. Cling's patch only works if no other code in your
                environment has already set a custom <code>URLStreamHandlerFactory</code>, you will get an exception
                on startup if this issue is detected; then you have to switch to another <code>StreamClient</code>
                implementation. Note that this implementation does <em>NOT WORK</em> on Android, the
                <code>URLStreamHandlerFactory</code> can't be patched on Android!
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.jetty.StreamClientImpl</code>
                            </dt>
                            <dd>
                This implementation is based on the <em>Jetty 8</em> HTTP client, you need the artifact
                <code>org.eclipse.jetty:jetty-client:8.1</code> on your classpath to use it. This implementation works
                in any environment, including Android. It is the default transport for
                <code>AndroidUpnpServiceConfiguration</code>.
            </dd>
                        </dl>
                        <p>
            For the <code>StreamServer</code> SPI, the following implementations are bundled with Cling:
        </p>
                        <dl>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.StreamServerImpl</code> (default)</dt>
                            <dd>
                This implementation uses the built-in webserver of the Sun JDK 6
                (<code>com.sun.net.httpserver.HttpServer</code>), hence, it does <em>NOT WORK</em> in an
                Android environment.
            </dd>
                            <dt>
                                <code>org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl</code>
                            </dt>
                            <dd>
                This implementation is based on the standard <em>Servlet 3.0</em> API and can be used in any environment
                with a compatible servlet container. It requires a <code>ServletContainerAdapter</code> to integrate
                with the servlet container, the bundled <code>JettyServletContainer</code> is such an adapter for a
                standalone <em>Jetty 8</em> server. You need the artifact
                <code>org.eclipse.jetty:jetty-servlet:8.1</code> on your classpath to use it. This implementation works
                in any environment, including Android. It is the default transport for
                <code>AndroidUpnpServiceConfiguration</code>. For other containers, write your own adapter and provide
                it to the <code>AsyncServletStreamServerConfigurationImpl</code>.
            </dd>
                        </dl>
                        <p>
            Each <code>StreamClient</code> and <code>StreamServer</code> implementation is paired with an implementation
            of <code>StreamClientConfiguration</code> and <code>StreamServerConfiguration</code>. This is how you
            override the Cling network transport configuration:
        </p>
                        <div>
                            <pre class="prettyprint"><![CDATA[...
public class MyUpnpServiceConfiguration extends DefaultUpnpServiceConfiguration {

    @Override
    protected Namespace createNamespace() {
        return new Namespace("/upnp"); // This will be the servlet context path
    }

    @Override
    public StreamClient createStreamClient() {
        return new org.fourthline.cling.transport.impl.jetty.StreamClientImpl(
            new org.fourthline.cling.transport.impl.jetty.StreamClientConfigurationImpl(
                getSyncProtocolExecutor()
            )
        );
    }

    @Override
    public StreamServer createStreamServer(NetworkAddressFactory networkAddressFactory) {
        return new org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl(
            new org.fourthline.cling.transport.impl.AsyncServletStreamServerConfigurationImpl(
                org.fourthline.cling.transport.impl.jetty.JettyServletContainer.INSTANCE,
                networkAddressFactory.getStreamListenPort()
            )
        );
    }

}]]></pre>
                        </div>
                        <p>
            The above configuration will use the Jetty client and the Jetty servlet container. The
            <code>JettyServletContainer.INSTANCE</code> adapter is managing a standalone singleton server, it is
            started and stopped when Cling starts and stops the UPnP stack. If you have run Cling with an existing,
            external servlet container, provide a custom adapter.
        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="lemmanote">
    This manual has been created with <a href="http://4thline.org/projects/lemma/">Lemma</a> from
    tested source code and Javadoc. Try it, you will like it.
</div>
</div>

    </div>

    <div class="project-coordinates">
        org.fourthline.cling:cling-core:2.1.1
    </div>

</div>

</body>
</html>
