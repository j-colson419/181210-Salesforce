if(true){
    System.debug(1); //This line is a statement
    System.debug(2);
}

if(true)
    System.debug(1);
else 
    System.debug(2);

/*Expressions */
1 + 6; //evaluates to an Integer with value 7

new Account(Name = 'Little Deb'); //This is a Constructor. It is a constructor because it uses the new keyword.


//-----------------------------------------------------------------------------------------------

/* Classes */

public class myClass {

    //This is where your class code goes

    Boolean boo = true;

    void myMethod(String name, Integer age)
    {

        //logic of method goes here        

    }
} // End of Class


//-----------------------------------------------------------------------------------------------


/*sobject Data types*/

Account a = new Account(Name = 'Revature');
// We cannot use the above syntax for declaring a car object.
// Car c = new Car(make = 'Ford'); <- This would not work


insert a;
a.Id;

Account a = [SELECT Id FROM Account LIMIT 1];
// Another way to grab values in a table and insert it in a databse


//-----------------------------------------------------------------------------------------------


/* Enums*/

public enum SEASON
{

WINTER,
SPRING,
SUMMER,
FALL

}

SEASON s = SEASON.WINTER;


//-----------------------------------------------------------------------------------------------


/*Collections
 * Lists

        - you can have duplicate elements
        - use when sequence matters

*/

List<Integer> myList;
List<Integer> myList = new List<Integer>();
List<Integer> myList = new List<Integer> {1,2,3};
myList[0];
myList.add(4);
List<List<List<List<List<Integer>>>>> myInsaneList;
// List are elastic, meaning you dont have to set one predetermined sized and stick with it.


//-----------------------------------------------------------------------------------------------

/* Sets
 *     - no duplicates
 *     - order of elemnts do not matter
 */

Set<Integer> mySet;
Set<Integer> mySet = new Set<Integer>();
Set<Integer> mySet = new Set<Integer> {1,2,3};

mySet.add(4);
mySet.contains(1);
mySet.contains(5);
mySet.remove(2);
//mySet[1] <- not valid; mySet.get(1) <- also not valid

//-----------------------------------------------------------------------------------------------

/* Maps
*    - a collections of a key-value pairs
*    - *** keys can be any PRIMITVE data type.
*    - keys must be unique
*       - this is what we use to access elements in a map
*    - keys of type String are CASE SENSITIVE  ('abc' != 'ABC')
*/


Map<Integer, String> myMap;
Map<Integer, String> myMap = new Map<ID, String>
{

    1 => 'Jessica', 
    2 => 'Matt',
    3 => 'Jeremy',
    4 => 'Jeremiah',
    5 => 'Alec', // u shall be missed
    6 => 'Donny',
    7 => 'sTePHeN',
    8 => 'Eva',
    9 => 'Kleb',
    10 => 'William',
    11 => 'Justice',
    12 => 'Rajuan',
    13 => 'David'
};


myMap.put(14, 'Asaye');
myMap.containsKey(1); //returns true
String name = myMap.get(5); //stores 'Alec' in the variable name
Set<Integer> s = myMap.keySet();


//-----------------------------------------------------------------------------------------------


/* Operators
 *
 *          =,  +=, -=,  *=,  /=, |=,  &=
 *          a += b;   === a = a + ;
 *          x |= y;   === x = x || y;
 *          x &= y;   === x = x && y;
 *
 *          ? :
 *                toCheck ? returnIfTrue : returnIffalse
 *          if toCheck == true, then returnIfTrue is returned;
 * 
 *          &&   ||
 *
 *          ==   ===
 *                    === will only evaluate to true, if both sides references the exact same location in memory
 *                          - - String comparison is sensitve
 *  
 *          == compares object value equality, not reference equality
 *              - String comparison is in-sensitve
 *              - Records, every field must have the same value.
 *      
 *          ! logical compliment operator 
 *               
 *          ++
 *          
 *          --
 */


 //-----------------------------------------------------------------------------------------------


 /* Operator Precedence
  *
  * 1) {} () ++ --  [Grouping and prefix increments and decrements]
  *
  * 2) ! -x  +x  (type) new  [Unary negatio, type cast, and object creation]
  *
  * 3) * /  [Multiplication and Division]
  *
  * 4) +  - [Addition and Subtraction]
  *
  * 5) < < = > >= instanceof [ Greater-than and less-than comparisons, reference tests]
  *
  * 6) ==  != [Comparison: equals and not-equal]
  *
  * 7) && [Logical AND]
  *
  * 8) || [Logical OR]
  *
  * 9) =,  +=, -=,  *=,  /=, |=,  &= [Assignment Operators]
  *
  */
          

// if ++ is before an integer, the integer is incremented before the line as . If ++ is after an integer, interger is incremented when the statement is called
// and the line has read the increment.


 //-----------------------------------------------------------------------------------------------


 /* Conversion
  *
  * In Apex, explicit coversion required.
  *
  *     var = (dataType) var;
  *
  *  Hierarchy of number Data Type conversion
  *
  *   High       Integer
  *
  *    |         Long
  *
  *    |         Double 
  *
  *   Low        Decimal
  *
  *
  *     *****IDs can always be assigned to strings*****
  *
  *     
  *
  */

    Subject a;

     Account b = (Account) a;


   //-----------------------------------------------------------------------------------------------


   /* Control Flow Statements
    *
    *
    *   break;  exits the loop
    *
    *
    *   Continue;  skips to the next iteration
    *
    * Switches 
    *   do no test range a of values
    *   expression is a variable
    *
    *
    *
    *
    */

    if (bool_exp) 
    {

        //execution logic

    }

    else if (bool_exp)
    {

    }

    else
    {

        //execution logic

    }
    

    while(bool_exp)
    {

        //remember to not write infinite loop
        //have some way to get out of the loop and make the check to fail/exit.

    }

    do 
    {

    }
    
    
    while(bool_exp)
    {




    }

    //Traditional For Loop

    for(inc var; exit||breaking/condition;increment/decrement)
    {
        
        //Use this when you know how many times you want to run through the loop

    }


    for(Integer i = 0; i < 5; i++)
    {

    }


    //For Each

    for(iteration_var:List/Set)
    {

    }

    for(Integer i :{1,1,2,3,5})
    {

    }


    // SOQL for Loop (foreach loops for salesforce)

    for(interation_var : [SELECT ...])
    {

    }

    for(Account a : [SELECT ID, Name FROM Account])
    {

    }

    switch on expressions 
    {
       when value 1 
       {
           
       }

       when value 2
       {
           
       }

       when else 
       {
           
       }
    }


       switch on s 
    {
       when SPRING
       {
         System.debug('rainy day');  
       }

       when SUMMER, FALL
       {
           System.debug('Its hot');
       }

       when else 
       {
         //optional 
         System.debug('Its cold in the Winter');  
       }
    }


