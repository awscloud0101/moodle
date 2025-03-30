public class createacc_Sobj
{
@auraEnabled
    Public Static String createacc(Account acc)
    {
        String Msg;
        Try
        {
            INSERT acc;
            Msg = 'Account Has been Created Successfully with Account Id' + acc.Id;
        }
        Catch(Exception E)
        {
            Msg = 'Account Creation Has been Failed Due to' + E.getMessage();
        }
    Return Msg;
    }
    
}