public with sharing class cl_1111_eg2_dataretrive
 {
   @AuraEnabled(cacheable=true)
   public static List<Account> allacc()
   {
    list<Account> al = [select id, name, phone, industry, rating from Account];
    return al;
   }
}