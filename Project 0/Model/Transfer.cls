public class Transfer extends Transaction{

    public String msg = 'There are insufficient funds available to complete this transaction at this time, Please ensure sufficent funds are available before transfering funds';
    
    public overrides balTransfer(String accountType, Decimal amount){
        switch on Transaction{
            when transactionType Transfer{
                If(accountBalance(accountType) >= amount ? Transaction.withdrawal() : System.error(msg))
                return accountBalance(accountType);
            }
            when transactionType Deposit{
                accountBalance(accountType) += amount;
                return System.debug('Your account balance after Deposit is ' + accountBalance(accountType));
            }
            when transactionType Withdrawal{
                if(accountBalance(accountType) >= amount ? accountBalance(accountType) -= amount : System.error(msg))
                return System.debug('Your account balance after Withdrawal is ' + accountBalance(accountType));
            }
        }
    } 
}