@IsTest
private class HelloWorldClassTest {
    @IsTest
    static void testSayHello() {
        // Call the method
        String result = HelloWorldClass.sayHello();

        // Assert expected value
        System.assertEquals('Hello from GitHub deployment!', result);
    }
}
