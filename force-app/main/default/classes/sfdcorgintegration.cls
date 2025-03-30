@RestResource(urlmapping='/samplesRestClass/')
global class sfdcorgintegration {
@httpGet
    global static string returnvalue(){
      return 'Inbound call is successful';   
    }
       
}