public class UtilityClass {
    public static void insertAccRecords()
    {
        List <Account> AccRecordsInsertList = new List <Account>();
        for(Integer i = 1; i< 100; i++)
            {
                Account acc = new Account();
                acc.Name = 'Class Account 0'+i;
                acc.Phone = '9876543'+i+'0';
                acc.Rating = 'Warm';
                AccRecordsInsertList.add(acc);
            }
        try
        {
            if(!AccRecordsInsertList.isEmpty())
            {
                Insert AccRecordsInsertList;
                system.debug('No of records Inserted : '+' '+AccRecordsInsertList.size());
            }   
        }
        catch(exception e)
        {
            System.debug('Error Message : '+e.getMessage());
        }   
    }
}