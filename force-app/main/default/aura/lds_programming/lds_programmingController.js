({
	loadme : function(component, event, helper)
    {
		component.find("myrec").getNewRecord("Contact",null,false,$A.getCallback(function()
                                             {
                                                 alert("Contact init Successfully");
                                             })
       										 );
	},       
                                                     
                                      
    saveme : function(component, event, helper)
    {
    
    component.find("myrec").saveRecord(function(response) {alert("contact saved successfully" +response.Id); });
	
}
})