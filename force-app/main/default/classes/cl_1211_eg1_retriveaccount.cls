public with sharing class cl_1211_eg1_retriveaccount
 {
    @AuraEnabled(cacheable=true)
    public static  List<Account> findaccount(string searchkey)
    {
        string skey='%'+ searchkey +'%';
        list<Account> al =[select Id, Name, Phone, Industry, Rating from Account where Name like :skey];
        return al;
    }
 }