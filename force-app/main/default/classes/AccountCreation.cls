public class AccountCreation {

    // Method to create an Account
    public static void createAccount() {
        // Create a new Account instance
        Account newAccount = new Account();
        
        // Set the required fields
        newAccount.Name = '987654321';
        newAccount.Type = '545454';
        newAccount.Industry = '123456';

        try {
            // Insert the new Account record
            insert newAccount;
            System.debug('Account created successfully with Id: ' + newAccount.Id);
        } catch (Exception e) {
            // Handle any exceptions that may occur during the insertion
            System.debug('An error occurred while creating the Account: ' + e.getMessage());
        }
    }
}