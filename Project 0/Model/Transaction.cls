public class Transaction extends Account(){

    public Integer transactionID;
    public Decimal amount;
    public Integer fromAccount;
    public Integer toAccount;
    public String transactionType;

    public List<transaction> transaction = new List<transaction>();

    public class Deposit(Decimal amount){
        Account.accountBalance() += amount;
        return Account.accountBalance();
    }
    public class Withdrawal(Decimal amount){
        Account.accountBalance() =- amount;
        return Account.accountBalance();
    }

    public class Transfer(Decimal amount){
        //TODO: enter code to transfer funds fromAccount() to toAccount() after verifying funds are available to transfer with checkAccountBalance()
        Account.accountBalance(Account.fromAccount()) -= amount;
        Account.accountBalance(Account.toAccount()) += amount;

        System.debug('Transfered ' + amount + ' from ' + Account.fromAccount() + ' to ' Account.toAccount());
)
        return Account.accountBalance(fromAccount) + Account.accountBalance(toAccount)//account balances for both accounts
    }

    public class checkAccountBalance(){
        if(checkAccountBalance() >= 0 ? Account.accountBalance():System.debug="NSF");
    }

}