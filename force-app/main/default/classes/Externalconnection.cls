@RestResource(urlmapping='/getDataFromOurSystem/*')
global class Externalconnection {
    
    @Httpget
    global static list<contact> getContactData(){
        RestRequest req = RestContext.request;
        Map<String,String> mapOfData= req.params;
        String myRecID = mapOfData.get('sfId');
        String email = mapOfData.get('email');
        system.debug('Check Passed Email' +email);
        List<Contact> conList =[select Id,Name from contact where Id =:myRecId AND Email =: email];
        
        return conList;
    } 	
}