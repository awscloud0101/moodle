public class IntegrationClass {
    @future(callOut=true)
    public static void callOrgB() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('org2orgnc/services/apexrest/Account/');
        req.setMethod('GET');
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        
        if (res.getStatusCode() == 200) {
            // Process the response
            System.debug(res.getBody());
        } else {
            // Handle error
            System.debug('Error: ' + res.getStatusCode() + ' ' + res.getStatus());
        }
    }
}