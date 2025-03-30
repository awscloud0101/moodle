({
	subme : function(component, event, helper)
    {
		var m = component.get("v.msg");
        var c1 = component.find("chld1");
        c1.passmsg(m);
	}
})