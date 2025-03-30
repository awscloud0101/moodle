public class IntegrationConsume {

    public static void callOut() {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('callout:dil2dil/services/apexrest/DataAvailable/');
     //   req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());
     req.setHeader('Content-Type', 'application/json');
        
        try {
            HttpResponse res = http.send(req);
            System.debug('The Status Code is: ' + res.getStatusCode());
            System.debug('The Response Body is: ' + res.getBody());
        } catch (Exception e) {
            System.debug('Callout failed: ' + e.getMessage());
        }
    }
}