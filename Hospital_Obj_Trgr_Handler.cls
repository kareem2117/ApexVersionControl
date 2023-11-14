public class Hospital_Obj_Trgr_Handler {
    
    public static void beforeInsert(List<Hospital__c> HospitalLsitRecs)
    {
        System.debug('I am in Before insert Trigger Method');
        System.debug('Size of the list is  : '+HospitalLsitRecs.size()+'Record : '+HospitalLsitRecs);
        for(Hospital__c h : HospitalLsitRecs)
        {
            if(!HospitalLsitRecs.isEmpty() && h.Country__c == Null)
            {
                System.debug('I am Checking the Validation rule');
                h.addError('Please select the country value');
            }
        }
    }
    
    public static void AfterInsert(List<Hospital__c> HospitalLsitRecs)
    {
        System.debug('I am in AfterInsertt Trigger Method');
        // System.debug('Size of the list is  : '+HospitalLsitRecs.size()+'Record : '+HospitalLsitRecs);    
        
        List <Hospital_Staff__c> StaffOfHospitalList = New List <Hospital_Staff__c>();
        for(Hospital__c h : HospitalLsitRecs)
        {
            Hospital_Staff__c HstaffList = New Hospital_Staff__c();
            HstaffList.Staff_Name__c = 'Staff of Hospital 05';
            HstaffList.Staff_Gender__c = 'Male';
            HstaffList.Staff_Type__c = 'Contract';
            HstaffList.Assign_Hospital__c = h.Id;
            StaffOfHospitalList.add(HstaffList);
        }
        try
        {
            if(!StaffOfHospitalList.isEmpty())
            {
                INSERT StaffOfHospitalList;
                System.debug('Record Successfully Inserted');
            }
        }
        catch (Exception e)
        {
        	system.debug('Error Message ==> '+e.getMessage());
        }
    }
    
    
    public static void beforeUpdate()
    {
        System.debug('I am in beforeUpdate Trigger Method');
    }
    public static void AfterUpdate()
    {
        System.debug('I am in AfterUpdate Trigger Method');
    }
    public static void beforedelete()
    {
        System.debug('I am in beforedelete Trigger Method');
    }
    public static void Afterdelete()
    {
        System.debug('I am in Afterdelete Trigger Method');
    }
    public static void AfterUndelete()
    {
        System.debug('I am in AfterUndelete Trigger Method');
    }

}