@RestResource(urlmapping='/getDataFromOurSystems/')
global class Externalcon2 {
    
    @HttpGet
    global static void getContactData() {
        // Set up the HTTP response object
        RestResponse res = RestContext.response;
        
        try {
            // Query for the contact data with a limit for safety
            List<Contact> conList = [SELECT Id, Name FROM Contact LIMIT 100];
            
            // Convert the contact list to JSON format and send in response
            res.responseBody = Blob.valueOf(JSON.serialize(conList));
            res.statusCode = 200;  // OK status
        } catch (Exception e) {
            // Handle exceptions and set appropriate status codes and messages
            res.statusCode = 500;  // Internal Server Error
            res.responseBody = Blob.valueOf('{"error":"An unexpected error occurred: ' + e.getMessage() + '"}');
        }
    }
}