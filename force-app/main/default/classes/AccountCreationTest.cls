@isTest
public class AccountCreationTest {
    
    @isTest
    static void testCreateAccount() {
        // Start test context
        Test.startTest();

        // Call the method to create an Account
        AccountCreation.createAccount();

        // Query the Account to check if it was created
        Account createdAccount = [SELECT Id, Name, Type, Industry FROM Account WHERE Name = '987654321' LIMIT 1];

        // Assertions to verify that the Account was created correctly
        System.assertNotEquals(null, createdAccount, 'Account should have been created.');
        System.assertEquals('987654321', createdAccount.Name, 'Account Name should match');
        System.assertEquals('545454', createdAccount.Type, 'Account Type should match');
        System.assertEquals('123456', createdAccount.Industry, 'Account Industry should match');

        // End test context
        Test.stopTest();
    }
}