public class AccountController {
   public static void accountInsert()
   {
       Account acc = new Account();
       acc.Name = 'Nagarjuna';
       acc.NumberOfEmployees = 100;
       acc.dileeporg1__Credit_Card_Number__c = '123456789874';
       acc.dileeporg1__Debit_Card_Number__c = 987654321236.00;
       insert acc;
   if(acc.Id!= null)
   {
              system.debug('debug id is' +acc.Id);

   }
   }

}