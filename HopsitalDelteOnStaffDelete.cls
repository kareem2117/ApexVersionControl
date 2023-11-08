public class HopsitalDelteOnStaffDelete {
    
    Public Static void DelteHospitalRecords()
    {
        List<Hospital_Staff__c> StaffList = New List<Hospital_Staff__c>();
        StaffList = [SELECT id FROM Hospital_Staff__c WHERE Delete_Parent__c = TRUE];
        System.debug('Reocrds Extracted are : '+StaffList.size());
        if(!StaffList.isEmpty())
        {
            try
            {
                DELETE StaffList;
                System.debug('Records Deleted Successfully');
            }
            catch(Exception e)
            {
                System.debug('Error Message : '+e.getMessage());
            }
        }
        
        List<Hospital_Staff__c> StaffDeletedList = New List<Hospital_Staff__c>();
        StaffDeletedList = [SELECT id, Assign_Hospital__r.id FROM Hospital_Staff__c WHERE Delete_Parent__c = TRUE AND isDeleted = TRUE ALL ROWS];
        
        List<Hospital__c> HsptlList = New List<Hospital__c>(); 
        if(!StaffDeletedList.isEmpty())
        {
            Set<Id> HospitalSet = New set<Id>();
            //HospitalSet.add(Hospital__c.id);
        }
    }
    
    
}