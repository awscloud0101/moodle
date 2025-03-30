public class batchapex implements database.batchable <sobject>
{
    public list<Account> DA;
    public list<AccountWithErr> NDA;
    
    public list<sobject> start(Database.BatchableContext CD)
    {
        list<Account> AL=[select Id,Name from account];
        return AL;
    }
    public void Execute(Database.BatchableContext CD, list<Account> ATD)
    {
        DA= new list<Account>();
        NDA=new list<AccountWithErr>();
        for(Account EA:ATD){
            try
            {
                Delete EA;
                DA.add(EA);
            }
            catch(Exception E)
            {
                AccountWithErr AR= New AccountWithErr();
                AR.Ac = EA;
                AR.Er = E.getMessage();
                NDA.add(AR);
            }
        }
        
    }
    public void Finish(Database.BatchableContext CD)
    {
        
    }

}