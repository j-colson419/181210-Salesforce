public class StaticAndInstanceExample {

    public static Boolean isFirst = true;
    public String objectName = '';
    
    {
        System.debug('In instance code block');
    }
    
    static {
        System.debug('In static code block');
    }
    
    public void updateIsFirst(){
        isFirst = false;
    }
    
    public static void printHello(){
        System.debug('Hello');
    }
    
}