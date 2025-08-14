@IsTest
private class LeadConversionServiceTest {
    @IsTest
    static void testConvertLead() {
        Lead l = new Lead(LastName = 'Test', Company = 'TestCo');
        insert l;

        Test.startTest();
        Boolean result = LeadConversionService.convertLead(l);
        Test.stopTest();

        System.assertEquals(true, result);
    }

    @IsTest
    static void testNullLead() {
        System.assertEquals(false, LeadConversionService.convertLead(null));
        System.assertEquals(false, LeadConversionService.convertLead(new Lead()));
    }
}
