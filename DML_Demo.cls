public class DML_Demo {
    
    Public static void DML_Insert()
    {
        Account acc = New Account();
        acc.Name = 'Test Account 02';
        acc.Phone = '98765435690';
        try
        {
            INSERT acc;
            system.debug('Record Created Successfull : '+acc.Name);
        }
        catch(exception e)
        {
            system.debug('Error Message : '+e.getMessage());
        }
	}
    Public static void DML_Update()
    {
        List<Account> AccountList = New List<Account>();
        AccountList = [SELECT Id,Name  FROM Account WHERE Name LIKE 'Test Accou%'];
        List<Account> AccountUpdatedList = New List<Account>();
        if(!AccountList.isEmpty())
        {
            System.debug('Size of the Records are : '+AccountList.size());
            for(Account Acc : AccountList)
            {
                Acc.Rating = 'Warm';
                Acc.Phone = '9999999999';
                AccountUpdatedList.add(Acc);
                System.debug('Record Value Updated Successfully : '+Acc.Id+'Name of the Record : '+Acc.Name);
            }
            try
            {
                UPDATE AccountUpdatedList;
                System.debug('Record Updated Successfully');
            }
            catch (Exception e)
            {
                System.debug('Error Message : '+e.getMessage());
            }
        }
        else
        {
            System.debug('List is Empty. No records found');
        }
    }
    Public static void DML_Delete()
    {
        List<Account> LstAccount = New List <Account>();
        LstAccount = [SELECT id FROM Account WHERE Rating = 'Warm' AND Name LIKE 'Test%'];
        System.debug('Records Found Successfully : '+LstAccount.size());
        if(!LstAccount.isEmpty())
        {
            try
            {
                DELETE LstAccount;
                System.debug('Records Successfuly Deleted : '+LstAccount.size());
            }
            catch(exception e)
            {
                System.debug('Error Message : '+e.getMessage());
            }
        }
        System.debug('List is Empty. Method Ran Successfully and Deleted all the Records which needs to be deleted ');
    }
    Public static void DML_Undelete()
    {
        List<Account> LstUndeleteAccount = New List<Account>();
        LstUndeleteAccount = [Select id,Name from Account where Name LIKE 'Test%' ALL ROWS];
        system.debug('THe Size of the Records are : '+LstUndeleteAccount.size());
        if(!LstUndeleteAccount.isEmpty())
        {
            try
            {
                UNDELETE LstUndeleteAccount;
                System.debug('Deleted Records are recoverd successfully');
            }
            catch(Exception e)
            {
                System.debug('Error Message : '+e.getMessage());
            }
        }
        
    }
    
}