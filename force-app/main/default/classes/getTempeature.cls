public class getTempeature {
    public static void makeCallout(){
        http http = new http();
        httpRequest req = new httpRequest();
        req.setEndpoint('callout:global_warming_named/api/temperature-api');
        req.setMethod('GET');
        httpResponse res = http.send(req);
        
        if(res.getStatusCode() == 200){
            system.debug('Made a callout to External System' +res.getBody());
        }
        
    }

}