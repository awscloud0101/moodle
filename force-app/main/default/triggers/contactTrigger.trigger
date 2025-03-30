trigger contactTrigger on Contact (before insert, after insert, before update, after update) {
    List<Id> accountId = New List<Id>();
    if(trigger.isAfter && trigger.isUpdate){
        for(contact c : trigger.new){
            if(c.Email != Trigger.oldMap.get(c.Id).Email){
                system.debug('Email Updated');
                accountId.add(c.AccountId);
            }
        }
        List<Account> accList=[select Id from Account where Id IN : accountId]; 
        for(Account acc : accList){
            acc.Site ='Yes.com';
        }
        update accList;
        }
    }