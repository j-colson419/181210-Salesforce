public class ApexExamples1 {

    private String description;
    public static String staticString;
    
    
    public String getDescription(){
        return this.description;
    }
    
    public void setDescription(String s){
        //this.description = s;
        description = s;
    }
    
    /* Write a constructor in Apex that sets a default description field */
    public ApexExamples1(){
        this.description = 'default description';
    }
    
    /*Write a block of Apex code that throws a custom exception */
    public static void throwException(){
        throw new CustomException();
        /* CustomException ce = new CustomException('some message');
         * throw ce;
         * 
         * throw new CustomException('a message');
         */
    }
    
    /* Write a try-catch block that handles an exception */
    public static void handleException(){
        Integer someVal;
        try{
            Integer invalid = 5/0;
            //code here that may throw exception
        } catch (Exception e){
            System.debug('Something went wrong. Message ' + e.getMessage());
            //code here to handle exception
        }
    }
    
}