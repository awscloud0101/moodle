public class SalesforceIntegrationController {

    
    @future(callout=true)
    public static void getDetails(){
        
        HttpRequest req = new HttpRequest();
        req.setEndPoint('callout:https://dileeptechpvtltd-dev-ed.develop.my.salesforce.com/services/data/v58.0/Account/');
        req.setHeader('contect-type', 'application/json; charset=UTF-8');
        req.setHeader('Accept', 'application/json');
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse response = Http.send(req);
        
        system.debug('response code:' +response.getStatusCode());
        system.debug('response body:' +response.getBody());


        
     
            
        
    }
}