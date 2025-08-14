@IsTest
private class StringUtilityTest {
    @IsTest
    static void testReverseString() {
        System.assertEquals('cba', StringUtility.reverseString('abc'));
        System.assertEquals('', StringUtility.reverseString(null));
        System.assertEquals('', StringUtility.reverseString(''));
    }
}