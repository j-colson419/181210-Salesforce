public abstract class Account(){

    public class Account(){
        public Integer accountId;
        public String accountType;
        public Decimal amount;
        public String authorizedUser1;
        public String authorizedUser2;
        public Decimal accountBalance;
    };

    public String List<accounts> customerAccounts = new List<accounts>(accountType()){};

    public String accountType(){
        //TODO: setup types of accounts: Checking, Savings, etc.
        Account accountType = new Account();
        System.debug('You\'ve successfully created a new ' + accountType + ' account');
        Return accountType;
    };

    public String Balance(Decimal Amount){

    };

    AuthO authorizedUser = new AuthO(Customer.verifyAge()){
        if (AuthorizedUser1 != null ? AuthorizedUser1 = authorizedUser, AuthorizedUser2 = authorizedUser);
    };
}
