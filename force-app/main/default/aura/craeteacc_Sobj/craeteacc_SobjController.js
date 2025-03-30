({
	saveme : function(component, event, helper) 
    {
		helper.Myhelptocreatecc(component);
},
    clearme : function(component, event, helper)
{
         component.set("v.accss.Phone",null);
         component.set("v.accss.Name",null);
         component.set("v.accss.Fax",null);
         component.set("v.accss.Industry",null);
    component.set("v.accss.Rating",null);
    component.set("v.accss.Sic",null);
    component.set("v.accss.Descrption",null);
}
})