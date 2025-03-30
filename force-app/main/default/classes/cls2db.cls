public class cls2db {
public dileeporg1__Lighting_Control__c dc = new dileeporg1__Lighting_Control__c ();


public cls2db()
{
    dc.dileeporg1__Energy_Consumption__c= 222;
    dc.dileeporg1__Schedule_Time__c=Date.newInstance(2024, 10, 19) ;
    dc.dileeporg1__Name__c='bhargav';
    dc.dileeporg1__Control_Command__c='111';
    dc.dileeporg1__Last_Updated__c = system.today();
    dc.dileeporg1__Status__c='ON';
    system.debug(dc);
    insert dc;
}
    }