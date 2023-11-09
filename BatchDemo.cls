public class BatchDemo Implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bcx)
    {
        /*List<Account> AccList = New List <Account>();
        AccList = [SELECT Id FROM Account];
        return AccList;*/
        // ----- cannot return Query through a list in batch Start as there is mismatch of return data type
        
        /*string q = 'SELECT Id FROM Account';
        return q;*/
        // ----- This is also throwing Error
        
        string q = 'SELECT Id FROM Account';
        return Database.getQueryLocator (q);
        // Proper way to Assign to a data type in batch Class Query Locator start Method      
    }
    
    public void execute(Database.BatchableContext bcx, List<Account> ListofRecords)
    {
        // Processing
        
        System.debug('I am in Execute Method and Size of the lsit receive is : '+ListofRecords.size());
        List <Account> UpdatedList = New List<Account>();
        
        System.debug('I am in Execute Method');
        for(Account acc : ListofRecords)
        {
            acc.Type = 'Prospect';
            UpdatedList.add(acc);
        }
        system.debug('Final Records after adding to the list are : '+UpdatedList.size());
        if(!UpdatedList.isEmpty())
        {
            try
            {
            	System.debug('I am in Try Block and Size of List : '+UpdatedList.size());
                UPDATE UpdatedList;
            }
            catch(Exception e)
            {
                System.debug('Error Message : '+e.getMessage());
            }
        }
        else
        {
        	System.debug('The List is Empty');    
        }
        
    }
    
    Public void finish(Database.BatchableContext bcx)
    {
    	// Post commit logic    
    	
        System.debug('I am in Finish Method');
    }
}