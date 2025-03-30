@RestResource(urlmapping='/samplerestclass/')
global class restInboundCls {
  
    @httpGet
    global static string returnSample(){
        return 'Inbound call is successful';
    }
}