public class ExceptionExample {

    public static void someMethod(){
        
        //create an account
        Account a = new Account();
        
        //we want to insert this account
        try {
            //code that could potentially throw an exception
            insert a;
        } catch (DMLException e){
            //this is where we handle that exception
            System.debug('There was an error when attempting to insert an account. Error: ' + e.getMessage());
        	throw new CustomException('helllooooo');   
        } catch (Exception soe) {
			         
        } finally {
            //any code in here will run, whether an exception is thrown or not
        }
        
        
    }
    
}