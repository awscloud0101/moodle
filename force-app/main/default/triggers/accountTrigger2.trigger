trigger accountTrigger2 on Account (before insert, before update) {
    if (Trigger.isBefore && Trigger.isInsert) {
        // Call validation for both insert and update
        AccountStatus.validateActiveStatus(Trigger.new);
    }
}