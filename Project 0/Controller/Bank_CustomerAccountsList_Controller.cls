public class Bank_CustomerAccountsList_Controller {

    /*
     * For all properties and methods, make sure to handle any possible exceptions.
     * I gave you a hint for the customer_accounts property.
     */

    public List<Customer_Account__c> customer_accounts {
        get {Customer_Account__c
            //TODO: write code that will retreive an initial list of customer_accounts
            // and all of the fields needed for any user action taken on the page.
        };
        return Customer_Account__c;
        set {Customer_Account__c = customer_accounts};
    }
    
    public String customerName {
        get{Customer.firstName, Customer.lastName};
        return Customer.firstName, Customer.lastname;
        set{Customer.firstname = firstName, Customer.lastName = lastName};
    }
    
    public String accountType {
        get{Account.accountType};
        return Account.accountType;
        set{Account.accountType = accountType};
    }
    
    public ID accountSelected { 
        get{Account.accountID}; 
        set{Account.ID = accountID}; 
    }
    
    public void getAccountsByCustomerName(){
        //TODO: update the customer_accounts variable, to contain
        //only accounts that have an Authorized user with a first
        //or last name that is similar to or matches what is 
        //stored in the customerName variable.
        
    }
    
    public void getAccountsByAccountType(){
        //TODO: update the customer_accounts variable to contain
        //only accounts that have an Account Type that is similar
        //to or exactly matches what is stored in the accountType
        //variable
        
    }
    
    public PageReference goToAccountPage(){
        PageReference pageRef = new PageReference('/apex/Bank_CustomerAccountDetails_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', accountSelected);
        return pageRef;
    }
}