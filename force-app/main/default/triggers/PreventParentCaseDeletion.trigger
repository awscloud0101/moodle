trigger PreventParentCaseDeletion on Case (before delete) {
    Set<Id> parentIds = new Set<Id>();
    
    for (Case c : Trigger.old) {
        if (c.ParentId != null) {
            parentIds.add(c.ParentId);
        }
    }
    
    List<Case> openChildCases = [SELECT Id FROM Case WHERE ParentId IN :parentIds AND Status != 'Escalated'];
    
    if (!openChildCases.isEmpty()) {
        for (Case c : Trigger.old) {
            c.addError('You cannot delete the parent case because there are open child cases.');
        }
    }
}