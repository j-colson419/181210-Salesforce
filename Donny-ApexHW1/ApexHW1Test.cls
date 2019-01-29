@isTest
public class ApexHW1Test {
       
    @isTest
    public static void posTest(){
        
        System.assertEquals(0, ApexHW1.nFibonacci(0));//positive zero test
        System.assertEquals(1, ApexHW1.nFibonacci(1));
        System.assertEquals(3, ApexHW1.nFibonacci(2));
        System.assertEquals(5, ApexHW1.nFibonacci(3));
        System.assertEquals(8, ApexHW1.nFibonacci(4));
        System.assertEquals(null, ApexHW1.nFibonacci(null));//null test
        System.assertEquals(21, ApexHW1.nFibonacci(5));
        System.assertEquals(null, ApexHW1.nFibonacci(-1)); //negative test
        System.assertEquals(55, ApexHW1.nFibonacci(10));
    }
}