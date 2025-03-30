public class accountTriggerHandler {
    public static void beforeInssert(list<account> triggernew ){
        accountTriggerHandlerLogic.updateRaing(triggernew);
    }
    public static void beforeUpdate(list<account> triggernew){
        accountTriggerHandlerLogic.updateRaing(triggernew);
    }
    public static void beforeDelete(list<account> triggerold){
         for(account ac:triggerold)
            {
                if(ac.dileeporg1__Active__c=='Yes'){
                    string err='record ni delete cheyalerandi miru......';
                    ac.addError(err);
                }
            }
    }
    public static void afterInssert(){
        
    }
    public static void afterUpdate(){
        
    }
    public static void AfterUndelete(){
        
    }

}