public class FetchLeadRecords {

     public static void fetchAndLogLeads() {
        // Query to fetch all Lead records
        List<Lead> leads = [SELECT Id, FirstName, LastName, Company, Email, Phone FROM Lead];

        // Log Lead records in Debug Log
        for (Lead leadRecord : leads) {
            System.debug('Lead Record: ' + leadRecord);
        }
    }
}