public class UtilityHopsitalSet {
    
    public static void SetOfRecordsHospital()
    {
        
		List <Hospital__c> HospitalList = New List <Hospital__c>();
        HospitalList = [SELECT id,Hospital_Type__c  FROM Hospital__c WHERE Hospital_Type__c = 'Public' LIMIT 10];
        Set <Id> HospitalSet = New Set <Id>();
        
        for(Hospital__c h : HospitalList)
        {
            HospitalSet.add(h.Id);
            System.debug('Collected Id Successfully');
        }
        
        system.debug('The IDs are collected and stored successfully  : '+HospitalSet.size());
        system.debug('The IDs are collected and stored successfully  : '+HospitalSet);      
    }
    
}