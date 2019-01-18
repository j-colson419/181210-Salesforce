public class Cat extends Animal{

    {
        this.numberOfLegs = 4;
    }
    
    static {
        System.debug('Cat Static Block');
    }
    
    public override void makeSound(){
        System.debug('meow');
    }
    
    public Cat() {
        this.name = '';
        this.species = 'feline';
    }
    
    public Cat(String n){
        this.name = n;
        this.species = 'feline';
    }
    
    public void setName(String n){
        this.name = n;
    }
    
}