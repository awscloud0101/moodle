@RestResource(urlMapping='/Account/*')
global with sharing class AccountService {

    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        return result;
    }

    @HttpPost
    global static String doPost(String name) {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        Account acc = new Account(Name = name);
        insert acc;
        return acc.Id;
    }
    
    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        delete acc;
    }
}