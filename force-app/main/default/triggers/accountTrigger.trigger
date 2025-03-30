trigger accountTrigger on Account (before insert, after insert, after update, before update,after delete, before delete)
{
    if(trigger.isbefore)
    {
        if(trigger.isinsert)
        {
            accountTriggerHandler.beforeInssert(trigger.new);
        }
        else if(trigger.isupdate)
        {
            accountTriggerHandler.beforeUpdate(trigger.new);
        }
        else
        {
           accountTriggerHandler.beforeDelete(trigger.old);
        }
     } 
    else
    {
       if(trigger.isinsert)
    {
        list<contact> conlist = new list<contact>();
        for(account a:trigger.new)
        {
            contact con1=new contact(accountid=a.id, lastName=a.name, firstName='test1', phone=a.phone);
            contact con2=new contact(accountid=a.id, lastName=a.name, firstName='test2', phone=a.phone);
            contact con3=new contact(accountid=a.id, lastName=a.name, firstName='test3', phone=a.phone);
            conlist.add(con1);
            conlist.add(con2);
            conlist.add(con3);
        }
        insert conlist;
    } 
        if(trigger.isupdate){
            list<contact> conlist= [select id,phone,accountid,account.phone from contact where accountid IN:trigger.newmap.keyset()];
            list<contact> finalList = new list<contact>();
            for(contact c:conlist){
                account oldacc = trigger.oldmap.get(c.accountId);
                if(c.account.phone != oldacc.phone){
                    system.debug('account phone==' +c.account.phone);
                    system.debug('contact phone==' +c.phone);
                    c.phone = c.account.phone;
                    finalList.add(c);
                }
            }
            if(!finalList.isempty()){
                 update finalList;
            }
           
        }
    
    else if(trigger.isdelete){
        
    }
    else{
        list<account> accfinallist = new list<account>();
        for(account a:[select id,description from account where id IN:trigger.newmap.keyset()])
        {
            a.Description='Undeleted from recyclebin';
            accfinallist.add(a);
        }
        update accfinallist;
    }
       

    }
}