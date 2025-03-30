public class SalesforceToSalesforceIntegration {
    public static void makeCallout() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://AP61.salesforce.com/services/apexrest/Account/');
        req.setMethod('POST');
        req.setHeader('Authorization', 'Bearer ' + 'TARGET_ORG_ACCESS_TOKEN');
        req.setHeader('Content-Type', 'application/json');
        req.setBody('{"name":"New Account"}');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        System.debug(res.getBody());
    }
}