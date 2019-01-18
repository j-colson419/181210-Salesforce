public class HelloWorld {

    public static String staticString = 'Hello World';
    public String instanceString = 'Happy Weekend';
    
    public static void printStaticString(){
        System.debug(staticString);
    }
    
    public void printInstanceString(){
        System.debug(instanceString);
    }
    
}//End of class