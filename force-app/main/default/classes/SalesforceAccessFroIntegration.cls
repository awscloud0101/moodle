@RestResource(urlMapping='/Account/')
global with sharing class SalesforceAccessFroIntegration {
    
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        return result;

}
}