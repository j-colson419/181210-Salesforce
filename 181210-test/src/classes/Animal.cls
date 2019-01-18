public abstract class Animal {

    public String name;
    public String species;
    public Integer numberOfLegs;
    
    static {
        System.debug('Animal Static Block');
    }
    
    {
        System.debug('Animal Instance Block');
    }
    
    public abstract void makeSound();
    
    public void breathe(){
        System.debug('*inhale* *exhale*');
    }
    
}