@IsTest
private class ContactBatchTest {
    @IsTest
    static void testBatch() {
        insert new Contact(LastName = 'Test1');
        insert new Contact(LastName = 'Test2');

        Test.startTest();
        ContactBatch cb = new ContactBatch();
        Database.executeBatch(cb, 1);
        Test.stopTest();

        for (Contact c : [SELECT Description FROM Contact]) {
            System.assertEquals('Updated by Batch', c.Description);
        }
    }
}
