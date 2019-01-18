@isTest
public class OutfitBuilderTest {

    @isTest
    public static void singlePositiveTest(){
        
        OutfitBuilder ob1 = new OutfitBuilder();
        List<String> results = ob1.shoesForNDays(1, 'Winter');
        
        System.assertEquals(1, results.size());
        System.assertEquals('Snow Boots', results[0]);
    }
    
    @isTest
    public static void singleNegativeTest(){
        OutfitBuilder ob1 = new OutfitBuilder();
        List<String> results = ob1.shoesForNDays(-1, 'Spring');
        System.assertEquals(0, results.size());
        
        OutfitBuilder ob2 = new OutfitBuilder();
        List<String> results2 = ob2.shoesForNDays(1, 'Not A Season');
        System.assertEquals('Vans', results2[0]);
    }
    
    @isTest
    public static void mytestmethod(){
        //insert a list of 10 accounts
        Test.startTest();
        //run my method call using the 10 accounts
        //we can get information about the number of DML calls, SOQL queries, so on..
        //that would be a result of just this method.
        Test.stopTest();
        //This is where you would have your assert statements
        System.assert(true);
    }
    
}