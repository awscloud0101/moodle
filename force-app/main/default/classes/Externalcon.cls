@RestResource(urlmapping='/getDataFromOurSystem/')
global class Externalcon {
    
    @Httpget
    global static list<contact> getContactData(){
        List<Contact> conList =[select Id,Name from contact limit 1];
        system.debug('line executed');
        return conList;
    } 	
}