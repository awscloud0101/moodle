({
	calcme : function(component, event, helper) 
    {
		var PRI=parseFloat(component.find("inp1").get("v.value"));
        var TIM=parseFloat(component.find("inp2").get("v.value"));
        var RAT=parseFloat(component.find("inp3").get("v.value"));
        
        
        var SI = (PRI * TIM * RAT)/100;
        component.set("v.interest",SI);
        
        var emi=(SI+PRI)/(TIM * 12);
        component.set("v.emi",emi);
	},
    clearme:function(component,event,helper)
    {
        component.find("inp1").set("v.value",null);
          component.find("inp2").set("v.value",null);
          component.find("inp3").set("v.value",null);
          component.set("v.interest",null);
        component.set("v.emi",null);
        
    }
})