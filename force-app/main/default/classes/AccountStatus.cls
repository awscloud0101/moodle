public class AccountStatus {
    public static void validateActiveStatus(List<Account> newAccounts) {
        for (Account acc : newAccounts) {
            // Check if the Active field is NULL or 'No'
            if (String.isEmpty(acc.dileeporg1__Active__c) || acc.dileeporg1__Active__c == 'No') {
                acc.addError('Account Record must be Active and cannot be NULL or "No".');
            }
        }
    }
}