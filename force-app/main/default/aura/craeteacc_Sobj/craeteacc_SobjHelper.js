({
	Myhelptocreatecc : function(component)
    {
		var ac = component.get("v.accss");
        var action = component.get("c.createacc");
        action.setParams({"acc" : ac});
        
        action.setCallback(this,function(response){
         var state = response.getState();
        if(state == 'SUCCESS')
        {
            var result = response.getReturnValue();
            alert(result);
          }
                  
});
$A.enqueueAction(action);
	}
})