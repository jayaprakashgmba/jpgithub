@IsTest
private class AccountTriggerHandlerTest {
    @IsTest
    static void testBeforeInsert() {
        Account acc = new Account();
        AccountTriggerHandler.beforeInsert(new List<Account>{acc});
        System.assertEquals('Default Name', acc.Name);

        Account acc2 = new Account(Name = 'Custom Name');
        AccountTriggerHandler.beforeInsert(new List<Account>{acc2});
        System.assertEquals('Custom Name', acc2.Name);
    }
}
