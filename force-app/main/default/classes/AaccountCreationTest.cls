@IsTest
public class AaccountCreationTest 
{
    @IsTest
    public static void accCreation()
    {
        Account acc = new Account();
        acc.name = 'october26';
        acc.type = 'Prospect';
        Insert acc;
         
    acc = [select name from account where Id =:acc.Id];
    system.assertEquals('october27', acc.Name);
}
}