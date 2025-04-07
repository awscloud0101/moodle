public class dilone 
{
string firstname='dileep';
string lastname='chintala';
string mobile='123456789';
date todayDate = system.today();
    integer abc=100;
    integer xyz=50;
    integer op;
 
    public dilone(){
       op=abc+xyz;
        system.debug('my last name ' +lastname);
         system.debug('the sum value is ' +abc);
        
        lastname= 'naa istam';
        abc = 2000;
        
        system.debug('my last name updated ' +lastname);
        system.debug('the sum value  updated ' +abc);


    }
    
}