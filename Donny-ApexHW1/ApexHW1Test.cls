@isTest
public class ApexHW1Test{

    @TestSetup
    static void dummyData(){

        System.assertEquals('setup of test data for Apex Homework 1')
    }

    @isTest
    public static void nFibonacciTest(){

        Integer n = new n();
        ApexHW1.nFibonacciTest(n);

        System.assertEquals('The fibonacci Sequence should return {0,1,1,2,3,5,8,13,21,44,65,...}');
    }
    
}