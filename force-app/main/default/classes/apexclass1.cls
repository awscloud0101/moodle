public class apexclass1 
{
	public integer ie;
    public account acc;
    public opportunity op;
    
    public apexclass1()
    {
        account ac = prepareAccount();
        insert ac;
        system.debug('acc==' +acc);
    }
    
    public account prepareAccount()
    {
        acc = new account();
        acc.name='Bittu';
        acc.Site='Palnadu';
        acc.Rating='Hot';
        
        return acc;
    }
}