public class MapExampleDemo {
    
    Public static void DemoPutMap()
    {
        Map <String,Integer> MapNameandAge = New Map<String,Integer>();
        
        // Important Map Methods
        // Put(), get(Key), contains (Key), Values (), KeySet(), Size ();
        
        // Put() is similar to Add method. It adds the Values to the key and value pair in map 
        
        MapNameandAge.put('a@salesforce.com',23);
        MapNameandAge.put('pk@salesforce.com',24);
        MapNameandAge.put('kkp@salesforce.com',25);
        MapNameandAge.put('LearnMap@salesforce.com',27);
        
        system.debug('put(Key,value) add the values. The values in map are : '+MapNameandAge);
        
        // get(Key) will bring the values associated with the Particular Key
        
        System.debug('get(Key) Extract The Paired Values in Map are : '+MapNameandAge.get('LearnMap@salesforce.com'));
        
        // ContainsKey checks wether the Key is Present in the Keyset of the map or not and returns the Boolean value
        
        Boolean isKeyPresent = MapNameandAge.Containskey('kkp@salesforce.com');
        System.debug('Is Key is Present == > '+isKeyPresent);
        
        // Before extracting the Key value in the Map, check wether the Key is present in the map or not
        
        if(isKeyPresent == TRUE)
        {
            system.debug('Containskey(Key) The values is : '+MapNameandAge.get('kkp@salesforce.com'));
        }
        else
        {
            System.debug('No such Key is Present');
        }
        
        // KeySet() is returning all the Keys in the Map as the Functionality of Set
        
        System.debug('KeySet () Returns all the Keys : '+MapNameandAge.Keyset());
        
        // Store the Values in SET
         
        Set <String> NameSet = new Set<String>(MapNameandAge.Keyset());
        System.debug('Keys of Map are stored in the form of Set and The Values present in set are : '+NameSet+' '+NameSet.size());
        
        // Value() is retuning all the values in map
        
        System.debug('Value () Returns all the Values : '+MapNameandAge.Values());
        
        // Store the Values in List
        List<Integer> ListOfMap = New List <Integer>(MapNameandAge.Values());
        System.debug('Values of Map are stored in the form of List and The Values present in List are : '+ListOfMap+' '+ListOfMap.size());
        
        Integer SizeofMap = MapNameandAge.size();
        System.debug('The size of map is : '+SizeofMap);
        
    }

}