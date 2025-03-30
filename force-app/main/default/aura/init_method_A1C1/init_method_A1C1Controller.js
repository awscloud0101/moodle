({
	subme : function(component, event, helper)
    {
        var nm = component.get("v.data1_str");
		var s1 = component.get("v.data4_dec");
        
        var chld = component.find("chld1");
        chld.methody1(nm,s1);
        	
	}
})