public class FetchAllAccounts {

    public void fetchAllAccounts() {
        
        // Use the Database class to query all records, including deleted ones
        List<Account> allAccounts = [SELECT Id, Name, CreatedDate, LastModifiedDate FROM Account ALL ROWS];

        // Process the retrieved records
        for (Account acc : allAccounts) {
            // You can perform any processing or logic here
            System.debug('Account Id: ' + acc.Id);
            System.debug('Account Name: ' + acc.Name);
            System.debug('Created Date: ' + acc.CreatedDate);
            System.debug('Last Modified Date: ' + acc.LastModifiedDate);
        }
    }
}