public class Account_Trgr_Handler {
    public static void AccountRecordsBeforeInsert(List<Account> AccountRecordLst)
    {
        system.debug('I am in Account Records Before Insert : ' + AccountRecordLst);
        for(Account Acc : AccountRecordLst)
        {
            if(Acc.Phone == Null)
            {
                Acc.addError('Phone Field Cannot be Blank');
            }
        }
    }
    
    public static void AccountRecordsAfterInsert(List<Account> AccountRecordLst)
    {
    	system.debug('I am in Account Records After Insert : No of Records Inserted :  '+' '+AccountRecordLst.size()+'The Values of the Records are : ' + AccountRecordLst);
        List<Contact> ContactRecordsInsert = new List <Contact>();
        for(Account acc : AccountRecordLst)
        {
            contact con = new contact();
            con.LastName = 'Test Contact 01';
            con.Phone = '9876543211';
            con.AccountId = acc.Id;
            con.Email = 'TestMail@gmail.com';
            ContactRecordsInsert.add(con);
        }
        try
        {
            if(!ContactRecordsInsert.isEmpty())
            {
                Insert ContactRecordsInsert;
                System.debug('Contact Records Created: '+ContactRecordsInsert.size());
            } 
        }
        catch(exception e)
        {
            System.debug('Error Message : '+e.getMessage());
        }
    }
}