({
	calcme : function(component, event, helper)
    {
        var n1=parseInt(component.get("v.num1"));
        var n2=parseInt(component.get("v.num2"));
        var n3=parseInt(component.get("v.num3"));
        
        if(n1>n2 && n1>n3)
        {
            component.set("v.Result",n1)
        }
        else if (n2>n1 && n2>n3)
        {
            component.set("v.Result",n2);
        }
        else
        {
            component.set("v.Result",n3);
        }
	},
    
    clearme : function(component, event, helper)
    {
        component.set("v.Result",null);
         component.set("v.num1",null);
         component.set("v.num2",null);
         component.set("v.num3",null);
    }
})