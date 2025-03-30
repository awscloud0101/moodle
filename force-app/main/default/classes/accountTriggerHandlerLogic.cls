public class accountTriggerHandlerLogic {
    public static void updateRaing(list<account> acclist){
        for(account a:acclist)
            {
                if(a.NumberOfEmployees<100 && a.Type== 'Other' && a.AnnualRevenue<500000)
                {
                    a.Rating='cold';
                    a.BillingCity='Hyderbad';
                }
                else if((a.NumberOfEmployees>100 && a.NumberOfEmployees<1000 ) && (a.Type=='Prospect' || a.type=='Technology Partner') && (a.AnnualRevenue>500000 || a.AnnualRevenue<1000000))
                {
                    a.Rating='warm';
                }
                 else if(a.NumberOfEmployees>1000 && (a.Type=='Prospect' || a.type=='Technology Partner') && a.AnnualRevenue>1000000)
                {
                    a.Rating='hot';
                }
               
            }
    }
}