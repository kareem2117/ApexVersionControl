public class SetExamplesDemo {
    
    public static void GetSetdata()
    {
        //list<Account> Acc = New List <Account>();
        
        set<String> EmailSet = New set<String>();
        EmailSet.add('Amit');
        EmailSet.add('Malli');
        EmailSet.add('Girish');
        EmailSet.add('Ravindra');
        EmailSet.add('Sireesha');
        EmailSet.add('Haqeem');
        EmailSet.add('Amit');
        
        System.debug('After adding the values into SET : '+EmailSet.size());
        System.debug('After adding the values into SET : '+EmailSet);
        
        
        List<Contact> ConList = New List<Contact>([Select id, Email,Phone from Contact]);
        System.debug('Contact List Contains : '+ConList.size());
        System.debug('Contact List Contains : '+ConList);
        
        
        set <String> SetIdCon = new set <String>(); 
        List<Contact> ConIdList = New List<Contact>([Select id,Email from Contact]);
        System.debug('Contact List Contains : '+ConList);
        System.debug('Contact Set Contains : '+SetIdCon);
        
        for(contact con : ConIdList)
        {
            System.debug('Email : '+con.Email);
            SetIdCon.add(con.Email);
        }
        System.debug('Contact Set Contains : '+SetIdCon);
        System.debug('Contact Set Contains : '+SetIdCon.size());
        
        for(String s: SetIdCon)
        {
            System.debug('Email Id\'s are : '+s);
        }
        
        
    }

}