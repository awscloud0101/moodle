public class getTemp {
    public static void makecallout(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndPoint('callout:global_warming_named?apiKey=dfa38bf5407e4029b34c136a4fdde927');
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        system.debug('status code' +res.getStatusCode());
        if(res.getStatusCode() == 200){
            system.debug('made a callout to External System' +res.getBody());
        }
        
    }

}