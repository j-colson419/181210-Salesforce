#DML
 /* Database Management Language
  *
  *
  */

  //DML Statement

  List<Account> acctList = new List<Account>();

  acctList.add(new Account(Name = 'Revaforce'));
  acctList.add(new Account(Name = 'Wiygul'));
  insert acctList;

  //DML statements allow you to perform a DML operations on a single sObject or a List
  //sObjects

  //Database class method
    
    Database.SaveResult[] srList = Database.insert(acctList);

    for(Database.SaveResult sr : srList)
    {
        if(sr.isSuccess())
        {
            System.debug('Successfully inserted account. \n Account ID: ' + sr.getId());
        }

        else
        {
            for(Database.Error e : sr.getErrors())
            {
                System.debug('The following error has occured.')

                System.debug(e.getStatusCode() + ': ' + e.getMessage());

                System.debug('Account fields that affected this error: ' + e.getFields());
            }
        }
     }

    /* Other Database Class Method Result Objects
     *
     *      Operqations:            Result Class
     *      insert, update          SaveResult Class
     *      upsert                  UpsertResult Class
     *      merge                   MergeResult Class
     *      delete                  DeleteResult Class
     *      undelete                UndeleteResult Class
     *      convertLead             LeadConvertLeadResult Class
     *      emptyRecycleBin         EmptyRecycleBinResult Class
     */
    

#Transaction Control
 /*
  *
  * Savepoint - lets you revert back to a previous state
  * 
  * Timeline of savepoints, you would roll back to the highest one and all save points in between are deleted.  
  * 
  * ****Back to the future****
  *
  *
  *
  * The following counts as a DML statement
  *
  * Savepoint sp1 = Database.setSavePoint();
  *
  * Database.rollback();
  *
  *
  * A transaction is every piece of code that runs
  *
  */