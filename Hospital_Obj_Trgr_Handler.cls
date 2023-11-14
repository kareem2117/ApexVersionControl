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
        System.debug('I am in AfterInsert Trigger Method');
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
    
    public static void AfterMapInsert(MAp<Id,Hospital__c> HospitalMap)
    {
        System.debug('Size of the Map is ==> '+HospitalMap.size());
        Set <Id> HospitalRecordsSet = New Set<Id>();
        
        if(!HospitalMap.isEmpty())
        {
            for(Hospital__c h : HospitalMap.values())
            {
                System.debug('Record Id of Current Record is : '+h.Id);
                System.debug('Current Record is : '+h);
                HospitalRecordsSet.add(h.Id);
                /*if(h.Create_Auto_Staff__c == False)
                {
                    h.Create_Auto_Staff__c = True;
                }*/
            }
            List<Hospital__c> UpdateHospitalRecordsList = new lIst <Hospital__c>();
            for(Hospital__c h1 : [SELECT Id,Create_Auto_Staff__c from Hospital__c WHERE Id =: HospitalRecordsSet])
            {
                if(h1.Create_Auto_Staff__c == False)
                {
                    h1.Create_Auto_Staff__c = True;
                    UpdateHospitalRecordsList.add(h1);
                }
            }
            if(!UpdateHospitalRecordsList.isEmpty())
            {
                try
                {
                    Update UpdateHospitalRecordsList;
                    System.debug('Records Inserted Successfully');
                }
                Catch (Exception e)
                {
                    System.debug('Error Message ==> '+e.getMessage());
                }
            }
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