({
	passme : function(component, event, helper) 
    {
		var params = event.getParam("arguments");
        var ms = params.metddata
        component.set("v.recvmsg", ms);
	}
})