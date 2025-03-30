({
	method1me : function(component, event, helper)
    {
		var params = event.getParam("arguments");
        var n = params.name;
        var s = params.sal;
        component.set("v.data1_str" , n);
        component.set("v.data4_dec" , s);
        
	}
})