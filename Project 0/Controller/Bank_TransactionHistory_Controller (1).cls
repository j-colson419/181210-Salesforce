public class Bank_TransactionHistory_Controller {

    public ID caId {
        get {
            if ( caId == null ) {
                caId = apexPages.currentPage().getParameters().get('caId');
            	
            }
            
            return caId;
        }
        set;
    }
    
    public List<Bank_Transaction__c> transactionList{
        //should contain any transactions related to the ID stored in caId
        get {
            transacionList = [SELECT Id, Name FROM Transaction WHERE Id = :caId];
        }
        set;
    }
       
    public void sortByDate(){
        //TODO: sort the records in the transaction list by createdDate.
        //Every time this method is called, the order of sorting 
        //should be changed. It should toggle between ascending and descending
        switch on transacionList{
            when ascending{
                transacionList = [SELECT Id, Name FROM Transaction WHERE Id =: caId];
            }

            when descencing{
                transacionList = [SELECT Id, Name FROM Transaction WHERE Id =: caId];
            }
        }    

    }
    
    public void sortByAmount(){
        //TODO: sort the records in the transaction list by Amount__c.
        //Every time this method is called, the order of sorting 
        //should be changed. It should toggle between ascending and descending

    }
    
    public void sortByRecordType(){
        //TODO: sort the records in the transaction list by RecordType.
        //Every time this method is called, the order of sorting 
        //should be changed. It should toggle between ascending and descending
        
    }
   
    
}