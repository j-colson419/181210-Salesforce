public class InvocableExampleClass {

    
    @InvocableMethod(label='Print Something' description='Prints to a log that we will hopefully be able to see')
    public static void printSomething(List<Id> recordIds){
        
        System.debug('Hopefully this prints...');
        
        for(Id i : recordIds){
            System.debug('Record Id: ' + i);
        }
         
    }
}