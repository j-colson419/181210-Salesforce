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
    