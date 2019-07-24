So actually I'm trying to send a MP3 file to my TV. But since the TV just gives you a Internal Server Error I created a MediaRenderer like in the Samples of Cling. By monitoring it i had a strange error message. But first my code:

    ActionCallback setAVTransportURIAction = new SetAVTransportURI(service,uri,metadata) {
        @Override
        public void failure(ActionInvocation invocation, UpnpResponse operation, String defaultMsg) {
            System.out.println(defaultMsg);
        }
    };
The uri is a String to a local http server: http://127.0.0.1/file.mp3 The metadata I've created with the DIDL Parser

DIDLContent didl = new DIDLContent();       
ProtocolInfo info = new ProtocolInfo("http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;DLNA.ORG_FLAGS=01500000000000000000000000000000");
MusicTrack track =new MusicTrack("0","0",title,creator,album, artist, new Res(info, size, uri));
didl.addItem(track);
DIDLParser parser = new DIDLParser();       
String metadata="";
try {
    metadata = parser.generate(didl);
} catch (Exception e) {
    e.printStackTrace();
}
Like the sample in the manual I send it via the upnpservice:

upnpService.getControlPoint().execute(setAVTransportURIAction);
I know that the TV doesnt get the file since I route to localhost. But the "fake" MediaRenderer I use for debugging spit out this message:

[cling-10        ] WARNING - 18:31:08,478 - A10ServiceDescriptorBinderImpl#generateActionArgument: UPnP specification violation: Not producing <retval> element to be compatible with WMP12: (ActionArgument, OUT) Actions http://127.0.0.1/file.mp3
[cling-35        ] INFO   - 18:31:09,447 - DA10DeviceDescriptorBinderImpl#hydrateDevice: Invalid X_DLNADOC value, ignoring value: SST-1.0
[cling-10        ] INFO   - 18:31:11,701 - DA10DeviceDescriptorBinderImpl#hydrateDevice: Invalid X_DLNADOC value, ignoring value: SST-1.0
[cling-35        ] INFO   - 18:31:11,702 - DA10DeviceDescriptorBinderImpl#hydrateDevice: Invalid X_DLNADOC value, ignoring value: SST-1.0
The fake MediaRenderer client is out of the Support Samples from Cling, I haven't changed much

What is wrong?

 


1 Answer: 

Looking at the actual implementation I can see this:

if (actionArgument.isReturnValue()) {
    // TODO: UPNP VIOLATION: WMP12 will discard RenderingControl service if it contains <retval> tags
    log.warning("UPnP specification violation: Not producing <retval> element to be compatible with WMP12: " + actionArgument);
    // appendNewElement(descriptor, actionArgumentElement, ELEMENT.retval);
}
It would appear that the Action Argument is not a 'return value'. I'm having the same issue, so when I figure out further what this means....will post more to this answer!

