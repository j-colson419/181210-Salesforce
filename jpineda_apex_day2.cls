/* if statements */

public enum SEASON 
{

    WINTER,
    SPRING,
    SUMMER,
    FALL
}

SEASON s = SEASON.WINTER;

if(String.valueOf(s) == 'WINTER')
{

    System.debug('It\'s winter');
    System.debug('Enum values must first be cast to strings, before we can compare them with strings');

}

else
{

   System.debug('Enum values do not equate to strings!');

}


   //-----------------------------------------------------------------------------------------------


   /* Switch statements*/

SObject sobj;
if(sobj instanceof Account)
{

    Account a = (Account)sobj;
    System.debug('Account' + a);

}

else if(sobj instanceof Contact)
{

    Contact c = (Contact)sobj;
    System.debug('Contact' + c);
}

else
{

    System.debug('default');

}


     // the below switch statement can be used to achieve the same goal as the above if-else statement


switch on sobj
{
    when Account a 
    {
            System.debug('Account' + a);

    }

    when Contact c
    {

        System.debug('Contact' + c);

    }

    when else
    {

        System.debug('default');

    }

}


/*while & Do-While Loops*/

Boolean bool = false;

Integer counter1 = 0;
Integer counter2 = 0;
do
{

    System.debug('Counter 1:' + ' ' + ++counter1);
    //This will fire atleast once before it checks the condition

} while(bool);

while(bool)
{
    System.debug('Counter 2:' + ' ' + ++counter2);
}


/*For Loop */

for(Integer i = 0; i < 11; i++)
{

    System.debug('Happy Wednesday, Associate #' + i);

}

List<String> yourNames = new List<String>{'William', 'Justice', ' Donny', 'Rajuan', 'Eva,', 'Aidarous','Stephen', 'David', 'Jeremiah', 'Jeremy'};

for(String name : yourNames)
{

    System.debug('Happy Wednesday' + yourNames);

}


  //-----------------------------------------------------------------------------------------------


  /* Static vs Instance Methods and Variables
   *
   *    static - belongs to the class, NOT to an instance of the class.
   *
   *              - in order to access a static variable or method, you must do so through the class name itself.
   *
   *                        i.e, MyClass.staticVariable;
   *                             MyClass.staticMethod();
   *
   *              - static variable values are shared amongst all instances of the class
   *              - static methods cannot reference non-static variables
                  - Apex classes CANNOT be static

   *    instance methods and variables belong to each individial instance of a class
   *              - instance methods can reference static and non-static variables
   *
   *
   *                **** Code Blocks****
   *
   *                {//some code in here} <-- this is an instance code block, this will run every time the instance is created
   *
   *         static {//some code in here} <-- a static code block, this will run first, but this will only ever run once, no matter where they are in a class
   */


   public class StaticAndInstanceExamples 
{
    
    public static Boolean isFirst = true;
    
    
    public String objectName = ' ';
    
    {
        
     	System.debug('In instance code block');
            
    }
    
    static 
    {
        
     	System.debug('In static code block');
            
    }
    
    public void updateisFirst()
    {
        
        isFirst = false;
        
    }
    
    public static void printHello()
    {
        
        System.debug('Hello');
    }

}


  //-----------------------------------------------------------------------------------------------


/* Transient keyword
 *
 *  - used to declare instance vars that cannot be saved and should NOT be transmitted via the biew state for a vf pafe.
 *
 *  - we will do examples when we get to visualforce.
 *
 *
 */



  //-----------------------------------------------------------------------------------------------


  /* Apex and Security
   *
   *   *** Apex classes run in System Mode by default.
   *
   *    With and Withouth Sharing keywords
   *
   *       - these are CLASS level definition modifiers. 
   *
   *       - the defailt is 'without sharing'
   *
   *       - when 'with sharing' is used, record levels access is applied
   *
   *            - that means, one user may see differet results from another user based ont their record access.
   *
   *       - these do not apply field or object level security.
   *
   */


   public with sharing class MyClass
   {

        public void printCountOfAccounts()
        {

            Integer count = MySystemClass.getAccounts().size();
            System.debug('# of Accounts: ' + count)
        }

   }

   public without sharing class MyClass
   {

        public List< Account> get Accounts()
        {

            //this method should return a list of all Accounts in the org
            return[SELECT Id, Name FROM Account];
            
        }


   }


  //-----------------------------------------------------------------------------------------------



   /* OOP
    *
    *   4 pillars
    *
    *   Encapsulation
    *
    *       'data hiding'
    *       
    *       controlling who (class, methods, or programs<Apex>) has access to what information
    *
    *            Acess Modifiers 
    *
    *    Narrow                private  - 
    *      |
    *      | Radius of         protected  - accessible by inner class + classes that extends to this class
    *      |
    *      | Access            public - method or variable that can referenced in this namespace
    *      |
    *     Wide                 global  -  any variable can access this variable in this class/ calss must be global to access global variable
    *   
    *
    *
    *
    *
    *  Abstraction (not a part of the 3 pillars)
    *
    *    -Absract classes and interfaces act as the foundation.
    *    -Don't need to know the method logic in order to use the method.
    *    -Abstract Classes
    *        -definded w/ "abstract"
    *        -contain atleast 1 abstract method. (They contain, an access modifier, definition modifier,)
    *
    *   - Interfaces- 
    *        
    *       w/ no access modifiers   
    *
    *       Do not have any concrete methods 
    *
    *       only contains abstract methods
    *       
    *       
    *
    *
    *
    *
    *  Inheritance
    *
    *   allows you to take something generela and specialize it
    *
    *   extends
    *
    *     - a class can only extend one class
    *
    *     - in order for a class to be extended, it must be abstract or virtual
    *
    *     - implements: a calss can implement 0 to many interfaces
    *
    *
    *
    *
    *
    *  Polymorphism
    *
    *    Overloading
    *
    *       - involves atleast one class
    *
    *       - multiple methods within that same class have the same name
    *
    *       - 2 methods with the same name but different signatures (different number parameters, type paramters, return types)
    *
    *
    *    Overriding
    *
    *
    *       - involves atleast 2 class with one method in each class that has the same name
    *
    *       - code body is different
    *
    *       KEYWORD
    *       virtual - specifies that the method can be overriden
    *       ovveride- used when definning a method that will be overriden ina parent class
    *
    */







    
#Animal Abstract Class

    public abstract class Animal 
 {
    
    public String name;
    
    public String species;
    
    public Integer numberOfLegs;
    
    
    static
    {
        System.debug('Animal static Block');   
    }
    
    
    {
        System.debug('Animal Instance Block');   
    }
    
    public abstract void makeSound();
    
    public void breathe()
    {
        
        System.debug('*inhale* *exhale*');
    }

 }


   

#Dog Class
        public class Dog extends Animal
 {
    
    {
        this.numberOfLegs = 4;
    }
    
    static
    {
        System.debug('Dog static Block');   
    }
    
    public override void makeSound()
    {
        System.debug('bark');
    }
    
    public Dog()
    {
        
        this.name = ' ';
        this.species = 'Canine';
        
    }
    
    public Dog(String n)
    {
        
        this.name = n;
        this.species = 'Canine';
        
    }

     Public void setName(String n)
    {
        this.name = n;
    }

 }




#Pet Interface

    public interface Pet 
 {

    void feed();
    
    void play();
    
 }





#Bird Class
    public virtual class Bird implements Pet
 {
    public Boolean isHungry
    {
        
       public get
        {
            if(isHungry == null)
            {
                
           isHungry = true;
                
            }
            
            return isHungry;
        }
        
         
        
       public set
        {
            System.debug('The bird\'s hunger has changed');
            isHungry = value;
            
        }
        
    }
    
    
    
    public virtual void feed()
    {
        
        System.debug('*pours kibble*');
        isHungry = false;
        
    }
    
    public void play()
    {
        
        System.debug('*throws ball*');
        isHungry = true;
        
    }

 }






#Pigeon Class
     public class Pigeon extends Bird 
 {
    
    public Boolean isPigeon = true;
    
    public override void feed()
    {
        System.debug('*fills bottle*');
        isHungry = false;
    }
 } 





#Code Execution for Polymorphism
    Dog d1 = new Dog();

    System.debug(d1.numberOfLegs);

    d1.makeSound();

    Animal d2 = new Dog();

    System.debug(d2.numberOfLegs);
    d2.makeSound();


    Bird b1 = new Bird();

    System.debug('b1 is the bird hungry' + b1.isHungry);

    if(b1.isHungry)
    {
    b1.feed();
    }

    else
    {
    
         b1.play();
    }

    Pet b2 = new Bird();

    //System.debug(b2.isHungry);

    b2.feed();


    Pigeon p1 = new Pigeon();

    System.debug('is Pigeon? ' + p1.isPigeon);

    p1.feed();

    Bird p2 = new Pigeon();

    p2.feed();

    Pigeon p3 = new Bird();

    /*System.debug('is Pigeon? ' + p3.isPigeon);

    p3.feed();

    //This will never work*/







#Super Class
    public virtual class SuperClass 
 {
    
    public String prefix = 'Mister';
    
    public String firstName = 'Jerem';
    
    public String lastName = 'Pineda';
    
    
    public virtual void printName(){
        
       System.debug(prefix + ' ' + firstname + ' ' + lastname);
    }
    

 }







#Subclass
  public class Subclass extends SuperClass
 {
    
    public override void printName()
    {
        
        super.printName();
        
        System.debug('But you can call me ' + super.firstName);
        
    }

 }




#Code Execution Supers
  Subclass sub = new Subclass();

 sub.printName();









//-----------------------------------------------------------------------------------------------


/* Inner Class*/

public class OuterClass
 {

    class inner Class
    {
        
        // Inner classes DO NOT inherit the with/without sahring keywords

    }
 }



