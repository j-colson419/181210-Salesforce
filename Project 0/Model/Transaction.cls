public virtual class Transaction extends Account{

    public Decimal amount;
    public String transactionType;
    public String msg = 'Please make a deposit.  A continued balance less than $1 will result in fees and other possible actions!';

    public List<transactions> acctTrans = new List<transactions>();

    public Decimal deposit(Decimal amount){
        Account.accountBalance(accountType) += amount;
        return Account.accountBalance();
    }
    public Decimal withdrawal(Decimal amount){
        Account.accountBalance(accountType) =- amount;
        return Account.accountBalance();
    }

    public abstract balTransfer(){}

    public Boolean checkAccountBalance(){
        if(checkAccountBalance() > 0 ? Account.accountBalance() : System.error = msg)
    }
}