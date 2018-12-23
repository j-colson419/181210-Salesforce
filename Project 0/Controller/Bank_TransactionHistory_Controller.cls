public class Bank_TransactionHistory_Controller {

    public ID caId {
        get {
            if ( caId == null ) {
                caId = apexPages.currentPage().getParameters().get('caid');
            	/* for testing purposes, consider setting a hardcoded customer_account Id in here
                Just make sure to remove it and use the above line when you are done.*/
            }
            
            return caId;
        }

        set;
        
    }
    
    
}