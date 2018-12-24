public class Transaction extends Account(){

    public Integer transactionID;
    public Decimal amount;
    public Integer fromAccount;
    public Integer toAccount;
    public String transactionType;

    public List<transaction> transaction = new List<transaction>();

    public abstract class Deposit(Decimal amount){
        amount += amount;
        return Account.accountBalance();
    }
    public abstract class Withdrawal(Decimal amount){
        amount =- amount;
        return Account.accountBalance();
    }

    public abstract class Transfer(Decimal amount){
        Account.accountBalance(fromAccount) -= amount;
        Account.accountBalance(toAccount) += amount;

        System.debug('Transfered ' + amount + ' from ' + Account.fromAccount() + ' to ' Account.toAccount();

        return Account.accountBalance(fromAccount) + Account.accountBalance(toAccount)//account balances for both accounts
    }

    public class checkAccountBalance(){
        if(checkAccountBalance() >= 0 ? Account.accountBalance():System.debug="NSF");
    }

}