/* if statements */
public enum SEASON {WINTER, SPRING, SUMMER, FALL}

SEASON s = SEASON.WINTER;
if(String.valueOf(s) == 'WINTER'){
    System.debug('It\'s winter!');
    System.debug('Enum values must first be cast to strings, before we can compare them with strings');
} else {
    System.debug('Enum values do not ever equate to strings!');
}

/* switch statements */
SObject sobj;
if(sobj instanceof Account){
    Account a = (Account)sobj;
    System.debug('Account ' + a);
} else if (sobj instanceof Contact){
    Contact c = (Contact)sobj;
    System.debug('Contact ' + c);
} else {
    System.debug('default');
}

    //the below switch statement can be used to achieve the same goal as the above if-else statement
switch on sobj {
    when Account a {
        System.debug('Account ' + a);
    }
    when Contact c {
        System.debug('Contact ' + c);
    }
    when null {
        System.debug('null');
    }
    when else {
        System.debug('default');
    }
}

/* While & Do-While Loops */
Boolean boo = false;
Integer counter1 = 0;
Integer counter2 = 0;
do {
    System.debug('Counter 1: ' + ++counter1);
} while (boo);

while (boo) {
    System.debug('Counter 2: ' + ++counter2);
}

/* For Loops */

for(Integer i = 0; i < 11; i++){
    System.debug('Happy Wednesday, Associate #' + i);
}

List<String> yourNames = new List<String>{'William', 'Justice', 'Donnie', 'Rajuan', 'Caleb', 'Eva', 'Aidarous', 'Stephen', 'David', 'Jeremiah', 'Jeremy'};
for(String name : yourNames){
    System.debug('Happy Wednesday, ' + name);
}

/* Static vs Instance Methods and Variables 
 *      static - belongs to the class, NOT to an instance of the class. 
 *          - in order to access a static variable or method, you must do so through the class name itself.
 *              i.e., MyClass.staticVariable;
 *                    MyClass.staticMethod();
 *          - static variable values are shared amongst all instances of the class
 *          - static methods cannot reference non-static variables
 *          - Apex classes CANNOT be static
 *
 *
 *      instance methods and variables belong to each individual instance of a class
 *          - instance methods can reference static and non-static variables.
 *         
 *      ***Code Blocks***
 *          { //some code in here } <- an instance code block
 *          static { //some code in here } <- a static code block
 *
 *          
 */


/* Code below is for static and instance class example */
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

/* execute anonymous code for static and instance example */
StaticAndInstanceExample si1 = new StaticAndInstanceExample();
StaticAndInstanceExample si2 = new StaticAndInstanceExample();
System.debug('si1 isFirst: ' + StaticAndInstanceExample.isFirst);
si2.updateIsFirst();
System.debug('si2 updated isFirst');
System.debug('si1 isFirst: ' + StaticAndInstanceExample.isFirst);

si1.objectName = 'Instance 1';
System.debug('si1\'s name field has been updated');
System.debug('si2\'s name: ' + si2.objectName);



/* Transient keyword 
 *
 *  -used to declare instance variables that cannot be saved and should NOT be transmitted via the View State for a vf page.
 *  - we will do examples when we get to visualforce.
 * 
 */

/* Apex and Security 
 *
 *  *** Apex classes run in System Mode by default.
 *  
 *  With and Without Sharing keywords
 *      - these are CLASS level definition modifiers.
 *      - the default is 'without sharing'
 *      - when 'with sharing' is used, record-level access is applied
 *              -that means, one user may see different results from another user based on their record access.
 *      - these do not apply field or object level security.
 */

 public with sharing class MyUserClass {
     public void printCountOfAccounts(){
         Integer count = MySystemClass.getAccounts().size();
         System.debug('# of Accounts: ' + count);
     }
 }

 public without sharing class MySystemClass {
     public static List<Account> getAccounts(){
         //this method should return a list of all Accounts
         //in the org
         return [SELECT Id, Name FROM Account];
     }
 }


 /* Inner Classes */

public with sharing class OuterClass {

    class InnerClass {
        /* Inner classes DO NOT inherit the with/without sharing
        keywords */
    }

}


/* the below code is from the Animal abstract class */
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

/* Below is the code from the Cat class*/
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

/* Below is the code from the Pet interface */
public interface Pet {

    void feed();
    void play();
    
}

/* Below is the code from the Dog class */
public virtual class Dog implements Pet{
    
    public Boolean isHungry {
        get {
            if(isHungry == null){
                isHungry = true;
            }
            return isHungry;
        }
        set {
            System.debug('The dog\'s hunger has changed.');
            isHungry = value;
        }
    }

    public virtual void feed(){
        System.debug('*pours kibble*');
        isHungry = false;
    }
    
    public void play(){
        System.debug('*throws ball*');
        isHungry = true;
    }
    
    
}

/* Below is the code from the Puppy class */
public class Puppy extends Dog {

    public Boolean isPuppy = true;
    
    public override void feed(){
        System.debug('*fills bottle*');
        isHungry = false;
    }
    
}

/* Below is the code from the SuperClass class */
public virtual class SuperClass {

    public String prefix = 'Miss';
    public String firstName = 'Jessica';
    public String lastName = 'Colson';
    
    public virtual void printName(){
        System.debug('My name is ' + prefix + ' ' + firstName + ' ' + lastName);
    }
    
}

/* Below is the code from the Subclass class */
public class Subclass extends SuperClass {

    public override void printName(){
        super.printName();
        System.debug('But you can call me ' + super.firstName);
    }
    
}

/* Below is the Execute Anonymous Window code for the above examples */
Cat c1 = new Cat();
System.debug(c1.numberOfLegs);
c1.makeSound();
Animal c2 = new Cat();
System.debug(c2.numberOfLegs);//should print 4? null?
c2.makeSound();

Dog d1 = new Dog();
System.debug('Is the dog hungry? ' + d1.isHungry);
if(d1.isHungry){
    d1.feed();
} else {
    d1.play();
}
Pet d2 = new Dog();
//System.debug(d2.isHungry);
d2.feed();

Puppy p1 = new Puppy();
System.debug('is puppy? ' + p1.isPuppy);
p1.feed();

Dog p2 = new Puppy();
p2.feed();

/*Puppy d3 = new Dog();
System.debug('is puppy? ' + d3.isPuppy);
d3.feed();*/

Subclass sub = new Subclass();
sub.printName();