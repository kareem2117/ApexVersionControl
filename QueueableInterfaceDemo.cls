public class QueueableInterfaceDemo implements queueable{
    
    public static void Execute(QueueableContext qv)
    {
        System.debug('I am in Queueable Interface demo class');
        UtilityClass.insertAccRecords();
    }

}