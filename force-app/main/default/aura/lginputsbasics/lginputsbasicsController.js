({
	saveme : function(component, event, helper) 
    {
		var empname = component.get("v.EmpName");
        var emppnum = component.get("v.EmpPhnNmbr");
        var empeduc = component.get("v.EmpEducation");
        var empcity = component.get("v.EmpCity");
        var empemail = component.get("v.EmpEmail");
        var empdob = component.get("v.EmpDOB");
        var empjndate = component.get("v.EmpJoinDate");
        var empfvclr = component.get("v.EmpFavClr");
        var emppasswrd = component.get("v.EmpPsswrd");
        
      alert('the employee Name is '+empname + 'and Phone Number is '+emppnum + ',Educational background is '+empeduc + 'and he/she is from '+empcity)
	},
    clearme : function(component, event, helper)
    {
		
	}
})