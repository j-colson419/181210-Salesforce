public class Subclass extends SuperClass {

    public override void printName(){
        super.printName();
        System.debug('But you can call me ' + super.firstName);
    }
    
}