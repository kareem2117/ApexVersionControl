public class ListDemoExamples 
{
	public ListDemoExamples()
    {
        //ListDemoExamples.ListAdd();
        //ListDemoExamples.ListSort();
    }
    public static void ListAdd()
    {
        List<String> MyListNames = New List<String>();
        System.debug('My List values are : '+MyListNames);
        MyListNames.add('Kareem');
        MyListNames.add('Madhav');
        MyListNames.add('Mallikarjun');
        System.debug('My List values are : '+MyListNames);
    }
    Public static void ListSort()
    {
        // Created List of Integers to Store Numbers
        
        List<Integer> MyNumbers = New List <Integer>();
        System.debug('Count of Numbers in List are : '+MyNumbers.size());
        MyNumbers.add(1);
        MyNumbers.add(3);
        MyNumbers.add(0);
        MyNumbers.add(5);
        MyNumbers.add(9);
        System.debug('Count of Numbers in List are : '+MyNumbers.size());
        
        // Sorting the Numbers in List
        
        MyNumbers.sort();
        System.debug('My List values are : '+MyNumbers);
        
        // Checking Wether the Number is Present in the list or not
        
        Boolean isPresent = MyNumbers.contains(9);
        System.debug('Fetched value is : '+isPresent);
        
        //Bringing the Number by calling the Index Value
        
        Integer MySelectedNumber = MyNumbers.get(4);
        System.debug('The Selected index holds the Value of : '+MySelectedNumber);
        
        // Checking Wether the List is Empty or not
        
        //System.debug('Is my Lis is Empty : '+MyNumbers.isEmpty());
        
        System.debug('List Values : '+MyNumbers);
        
        // Copying the List items into New list
        
        List<Integer> CopyListVal = New List <Integer>(MySelectedNumber);
        System.debug('List Values : '+CopyListVal);
        
    }
    Public Static void ListClone()
    {
        Account a = New Account(Name = 'Clone Record 01', BillingCity = 'California');
        Account b = New Account();
        
        Account[] q1 = New Account []{a,b};
        Account[] q2 = q1.clone();
        
        System.debug('The Values of q1 - a : '+q1[0]);
        System.debug('The Values of q1 - b : '+q1[1]);
        System.debug('values are : '+q1);
        
        Boolean IsEMptyList = q2.isEmpty();
        System.debug('My List is Empty : '+IsEMptyList);
        
        System.debug('The Values of q2 - a : '+q2[0]);
        System.debug('The Values of q2 - b: '+q2[1]);
        System.debug('values are : '+q2);
        
        System.debug('q1[0].BillingCity ----> '+q1[0].BillingCity);
        
        q1[0].BillingCity = 'San Francisco';
        
        System.debug('q1[0].BillingCity ----> '+q1[0].BillingCity);
        System.debug('values are : '+q1);
        System.debug('values are : '+q2);
        
        System.assertEquals('San Francisco', q1[0].BillingCity);
        System.assertEquals('San Francisco', q2[0].BillingCity);
                 
    }
    
    
}