if(true) {
    System.debug(1); // This line is a statement
    System.debug(2);
}

if(true)
    System.debug(1);
else 
    System.debug(2);

/* Expressions */
1 + 6; //evaluates to an Integer with value 7

new Account(Name = 'Little Deb');

/* Classes */
public class myClass {
    //This is where your class code goes
    Boolean boo = true;

    void myMethod(String name, Integer age){
        //logic of method goes here
    }


}

/* sObject Data Types */
Account a = new Account(Name = 'Revature');
//We cannot use the above syntax for declaring a car object.
// Car c = new Car(make = 'Ford'); <- This would not work

insert a;
a.Id;
Account a = [SELECT Id FROM Account LIMIT 1];

/* Enums */
public enum SEASON {WINTER, SPRING, SUMMER, FALL}

SEASON s = SEASON.WINTER;

/* Collections 
 *      Lists
            - you can have duplicate elements
            - use when sequence matters
 */

 List<Integer> myList;
 List<Integer> myList = new List<Integer>();
 List<Integer> myList = new List<Integer>{1,2,3};
 myList[0];
 myList.add(4);

 List<List<List<List<List<Integer>>>>> myInsaneList;

/*      Sets
 *          - no duplicates
 *          - order of elements doesn't matter
 */

 Set<Integer> mySet;
 Set<Integer> mySet = new Set<Integer>();
 Set<Integer> mySet = new Set<Integer>{1,2,3};

mySet.add(4);
mySet.contains(1);
mySet.contains(5);
mySet.remove(2);
//mySet[1] <- not valid; mySet.get(1) <- also not valid

/* Maps
 *  - a collection of key-value pairs.
 *  - *** keys can be any PRIMITIVE data type.
 *  - keys must be unique
 *      - this is what we use to access elements in a map
 *  - keys of type String are CASE SENSITIVE ('abc' != 'ABC')
 */

Map<Integer, String> myMap;
Map<Integer, String> myMap = new Map<Integer, String>{
    1 => 'Jessica',
    2 => 'Jessica'
};
myMap.put(3, 'Jessica');
myMap.put(2, 'Matt');
myMap.containsKey(1); //returns true
String name = myMap.get(2); //stores 'Matt' in the variable name
Set<Integer> s = myMap.keySet();

/* Operators
 *
 *      = += -= *= /= |= &=
 *      a += b;  ===  a = a + b;
 *      x |= y;  ===  x = x || y;
 *      
 *      ? : 
 *          toCheck ? returnIfTrue : returnIfFalse
 *        if toCheck == true, then returnIfTrue is returned.
 *
 *      && ||
 *      == ===
            === will only evaluate to true, if both sides reference the exact same location in memory
 *          == compares object value equality, not reference                 equality
 *      
 *      ! ++ --
 */


 /* Below is the Car class example that we did in the Developer Console */

public class Car {

    public String make;
    public String model;
    public Integer year;
    public Decimal speed; //speed measured in miles per hour
    
    public Decimal getSpeed(){
        return speed;
    } //This method has a return value
    
    public void setSpeed(Decimal newSpeed){
        speed = newSpeed;
    }//This method has a 'side effect'
    
    public void accelerate(){
        speed += 0.5;
        // the above line is short hand notation for: speed = speed + 0.5;
    }//This method has a 'side effect'
    
}


 /* Below is the Execute Anonymous Code from the Car class example */
 Car myCar = new Car();
System.debug(myCar.make);
myCar.make = 'Ford';
System.debug(myCar.make);
myCar.setSpeed(20);
myCar.accelerate();
System.debug(myCar.speed);
