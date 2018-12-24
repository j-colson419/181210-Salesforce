public abstract class Account(){

    public Integer accountId;
    public String accountType;
    public String authorizedUser1;
    public String authorizedUser2;
    public Decimal balance;    

    public List<account> account= new List<Account>();

    public Decimal accountBalance(Decimal amount{
        balance += amount;
        return balance;
    }

    public String accountType(){
        
    }

    public Integer fromAccount(){
        //TODO: setup conditional statement from which account to withdraw funds
    }
    
    public Integer toAccount(){
        //TODO: setup conditional statement for depositing funds into

    }
}
