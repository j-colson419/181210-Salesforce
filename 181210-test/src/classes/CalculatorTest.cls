@isTest
public class CalculatorTest {

    @isTest
    public static void testAdditionMethod(){
        /* Positive Test */
        Integer a = 1;
        Integer b = 2;
        List<Integer> intList1 = new List<Integer>{a,b};
        Integer sum = Calculator.add(intList1);
        System.assertEquals(3, sum);
        
        List<Integer> intList3 = new List<Integer>{a};
        Integer sum3 = Calculator.add(intList3);
        System.assertEquals(1, sum3);
        
        /* Negative Test */
        List<Integer> intList2 = new List<Integer>();
        Integer sum2 = Calculator.add(intList2);
        System.assert(sum2 == null);
        
        List<Integer> intList4 = new List<Integer>{1, null, 3};
        Integer sum4 = Calculator.add(intList4);
        System.assertEquals(4, sum4);
    }
    
    @isTest
    public static void testAverageMethod(){
        /* Single Positive Test */
        List<Integer> intList1 = new List<Integer>{1};
        Decimal avg1 = Calculator.average(intList1);
        System.assertEquals(1, avg1);
        
        /* Bulk Positive Test */
        List<Integer> intList2 = new List<Integer>{1,1,1,1,1,1,1,1,1,1};
        Decimal avg2 = Calculator.average(intList2);
        System.assertEquals(1, avg2);
        
        List<Integer> intList5 = new List<Integer>{10, 20, 10, 20};
        Decimal avg5 = Calculator.average(intList5);
        System.assertEquals(15, avg5);
        
        /* Single Negative Test */
        List<Integer> intList3;
        Decimal avg3 = Calculator.average(intList3);
        System.assertEquals(null, avg3);
        
        /* Bulk Negative Test */
        List<Integer> intList4 = new List<Integer>{1, null, 1, 1};
        Decimal avg4 = Calculator.average(intList4);
        System.assertEquals(1, avg4);
    }
    
    @isTest
    public static void testMaxMethod(){
        /* Single Positive */
        List<Integer> intList1 = new List<Integer>{1};
        Integer max1 = Calculator.max(intList1);
        System.assertEquals(1, max1);
        
        /* Bulk Positive */
        List<Integer> intList2 = new List<Integer>{1, 2, 3, 4, 5};
        Integer max2 = Calculator.max(intList2);
        System.assertEquals(5, max2);
        
        /* Single Negative */
        List<Integer> intList3;
        Integer max3 = Calculator.max(intList3);
        System.assertEquals(null, max3);
        
        /* Bulk Negative */
        List<Integer> intList4 = new List<Integer>{1, null, 2, 3, null, 5};
        Integer max4 = Calculator.max(intList4);
        System.assertEquals(5, max4);
        
        /* More Tests */
        List<Integer> intList5 = new List<Integer> {-5, -1, -20, -14};
        Integer max5 = Calculator.max(intList5);
        System.assertEquals(-1, max5);
        
        List<Integer> intList6 = new List<Integer> {1, 2, 6, 6, 5};
        Integer max6 = Calculator.max(intList6);
        System.assertEquals(6, max6);
    }
    
}