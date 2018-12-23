public abstract Transaction(){

    public Integer transactionID;
    public Decimal amount;
    public Integer fromAccount;
    public Integer toAccount;
    public String transactionType;

    Transaction transaction = new Transaction();

    public class Deposit(Decimal amount){
        amount += amount;
        return Account.accountBalance();
    }
    public class Withdrawal(Decimal amount){
        amount =- amount;
        return Account.accountBalance();
    }

    public class Transfer(Decimal amount){
        Account.accountBalance(fromAccount) =- amount;
        Account.accountBalance(toAccount) += amount;

        return Account.accountBalance(fromAccount) + Account.accountBalance(toAccount)//account balances for both accounts
    }

    public class checkAccountBalance(){
        if(checkAccountBalance() >= 0 ? Account.accountBalance():System.debug="NSF");
    }
}