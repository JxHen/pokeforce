trigger AccountTrigger on Account (before insert, before update, before
    delete, after insert, after update, after delete,  after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        //AccountHandler.CreateNewOpportunity(Trigger.New);
        AccountTriggerHandler.CreateAccounts(Trigger.New); 
    }
}