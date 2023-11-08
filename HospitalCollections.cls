public class HospitalCollections {
    public static void CollectRecordId()
    {
        List <Hospital__c> HospitalRecordList = New List <Hospital__c>();
        HospitalRecordList = [SELECT Id,Name, hospital_type__c FROM Hospital__c WHERE Hospital_Type__c = 'Public' LIMIT 10];
        Set <Id> HospitalId = New Set<Id>();
        if(!HospitalRecordList.isEmpty())
        {
        	for(Hospital__c h: HospitalRecordList)
            {
                HospitalId.add(h.Id);
                System.debug('ID Stored in SET of Hopsital IDs');
            }
            System.debug('The Records ID are Collected in Set : '+HospitalId.size());
            System.debug('The Records ID are Collected in Set : '+HospitalId);
        }
    }

}