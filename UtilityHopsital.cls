public class UtilityHopsital {
    public static void CreateRecords()
    { 
        List<Hospital__c> InsertRecordsList = New List <Hospital__c>();
        for(Integer i=1;i<=20;i++)
        {
            Hospital__c H = new Hospital__c();
            H.Hospital_Name__c = 'Test Hospitals '+i;
            H.Hospital_Contact__c = '98764532'+i;
            H.Hospital_Specialised_for__c = 'Brain Hospital';
            H.Hospital_Type__c = 'NGO';
            InsertRecordsList.add(H);
            System.debug('Record Inserted Successfully');
        }
        try
        {
            if(!InsertRecordsList.isEmpty())
            {
                INSERT InsertRecordsList;
                System.debug('Records Inserted Successfully : '+InsertRecordsList.size());
            }
        }
        catch(Exception e)
        {
            System.debug('Error Message : '+e.getMessage());
        }
    }

}