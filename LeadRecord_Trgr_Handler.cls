public class LeadRecord_Trgr_Handler {
    public static void LeadRecordBeforeInsert(List<Lead> LeadRecordsValidate)
    {
        System.debug('I am in Before Insert trigger');
        for(Lead L : LeadRecordsValidate)
        {
            if(L.Email == Null)
            {
                L.Email.addError('Please Enter Email ID');
            }
            if(L.Phone != Null)
            {
                L.MobilePhone = L.Phone;
            }
            if(L.Rating == 'Hot' && L.AnnualRevenue <= 100000)
            {
                L.addError('Annaul revenue cannot be Less than 1 lakh when the Rating is Hot');
            }
        }
        system.debug('The Inserted Record are : '+LeadRecordsValidate.size()+'The Record ID is : '+LeadRecordsValidate);
    }
    public static void LeadRecordAfterInsert(List<Lead> LeadRecordsValidate)
    {
		system.debug('I am in After Insert Trigger Method');
		system.debug('The Inserted Record are : '+LeadRecordsValidate.size()+'The Record ID is : '+LeadRecordsValidate);
    }
}