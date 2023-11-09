public class UtilityHospitals {
    
    // Create Hospital records
    
    public static void CreateRecords()
    { 
        List<Hospital__c> InsertRecordsList = New List <Hospital__c>();
        for(Integer i=1;i<=30;i++)
        {
            Hospital__c H = new Hospital__c();
            H.Hospital_Name__c = 'Class Hospitals '+i;
            H.Hospital_Contact__c = '98764532'+i;
            H.Hospital_Specialised_for__c = 'Cancer Hospital';
            H.Hospital_Type__c = 'Private';
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
    
    // Create Hospital Staff records
    
    public static void CreateHospitalStaffRecords()
    { 
        List<Hospital_Staff__c> InsertStaffRecordsList = New List <Hospital_Staff__c>();
        for(Integer i=1;i<=10;i++)
        {
            Hospital_Staff__c Hs = new Hospital_Staff__c();
            Hs.Staff_Name__c = 'Staff Record 0'+i;
            Hs.Staff_Gender__c = 'Male';
            Hs.Assign_Hospital__c = 'a025g00000KEHiRAAX';
            InsertStaffRecordsList.add(Hs);
            System.debug('Record Inserted Successfully');
        }
        try
        {
            if(!InsertStaffRecordsList.isEmpty())
            {
                INSERT InsertStaffRecordsList;
                System.debug('Records Inserted Successfully : '+InsertStaffRecordsList.size());
            }
        }
        catch(Exception e)
        {
            System.debug('Error Message : '+e.getMessage());
        }
    }
    
}