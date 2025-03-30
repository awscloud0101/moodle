@RestResource(urlMapping='/DataAvailable/*')
global class IntegrationExpose {
    
@HttpGet
    global static list<contact> getContact(){
        list<contact> con = [select Id,Name from contact];
        return con;
    }
}