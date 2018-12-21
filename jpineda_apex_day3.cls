#Custom Labels
 /*enables devs to create mujlti-lingual apps
 *
 *
 * $Label- the dollar sign means its global
 *  
 *    - up to 5000 custom lables in org
 */

 System.Lable.labelName;



#SOQL
  
 //In system mode you cannot change system or formula fields. They are read only.

 /* Salesforce Object Query Language//gov limit per transaction 50,000 records
  *
  *
  * evaluate to:
  *
  *     - Integer
  *
  *     - a single sobject
  *
  *     - list of s objects
  *
  *     use when:
  *
  *  you know which obj resiedd,
  *  
  * places to use SOQL:
  *
  *     in the queryString param of the query()
  *
  *     in Apex statements
  *
  *     invf controllers + getters methods
  *
  *     in query editor of the Dev Console
  *
  *  SOQL (Syntax)
  *   - SELECT (Comma seperates list of fields)
  *
  *   - FROM   (Object API name)
  *
  *   - WHERE  ()
  *
  *     wildcards available:
  *
  *     - Underscore(_) - whic represents exactly one character
  *
  *     - percent (%) - which represents 0 to many characters
  *
  *
  *     operators for filtering by multi-select picklist value:
  *
  *     =   equals the specified string
  *
  *    !=
  *
  *     INCLUDES    contains the specified string
  *
  *     EXCLUDES    contains the specified string
  *
  *     ;           specifires and for twi or more strings. 
  *
  *                     use when two or more items must be selevtd 
  *
  *
  * Comparision operators for WHERE clause expressed
  *
  * =. !=. <, <=, >, >=, LIKE, NOT IN, INCLUDES< EXCLUDES
  *
  *
  *
  *   LIKE only supported for string fields
      case-sensity
  9
  *
  *
  *
  *
  *
  */


 /* SOQL (Syntax)
    SELECT (Comma seperates list of fields)
  
    FROM   (Object API name)
  
    WHERE  (field exp operator value) = evaluates to a boolean*/

     //Examples

     SELECT Id, Name

     FROM Account

     WHERE Name LIKE 'L&' 

     AND Ratinng !- null

     OR someBool_c = TRUE


     /*PICKLIST*/

     SELECT Id, MSP1_c FROM customonk__c

     WHERE , MSP1 __c INCLUDES ('AAA;BBB', 'CCC')




#SOSL
  
 /* Salesforce Object Search Language // Is more efficient, it is text based.* //gov limit per transaction: 2,000
  *
  * evalate to a list of lists og sobjects
  *
  * can query multiple unrelated objects at one time
  *
  * progromatic way tp perform TEXT BASED seatches
  *
  */




SOQL (Syntax)
- SELECT (Comma seperates list of fields); //There is no * because of Governor Limits
- FROM   (object api name);
- WHERE  (Field expression operator value); //evaluates to a boolean;

SELECT Id, Name
FROM Account
WHERE Name LIKE 'L%' //(Wild Card (L%) )
AND Rating !+ null
OR someBool__c = TRUE

/* Wildcards available: */
- underscore (_) - which represents exactly one character.
- percent (%) - Which represents 0 to many characters.

/*operators for filtering by multi-select picklists values*/

    = - equals the specified strings
    != - does not equal specified strings
    INCLUDES - contains the specified strings
    EXCLUDES - does not contain the specified string specifies AND for two or more strings 
        -Use when 2 or more items MUST be selected.

SELECT Id, MS1__c FROM CustObj__c
WHERE MSP1__c = 'AAA;BBB'

SELECT Id, MSP1__c FROM CustObj__c
WHERE MSP1__c INCLUDES ('AAA;BBB', 'CCC')

/* comparison operators for WHERE Clause expressions:

    =, !=, <, <=, >, >=, LIKE, IN, NOT IN, INCLUDES, EXCLUDES
    Logical operator; AND or NOT

    LIKE
        -only supported for String Fields
        -case-insesnsitive
        -don't use backslah except a special character
    
    Special Character
        -Special Characters: ', ", \
        -Escape sequences
        \n - new line
        \r - carriage return
        \t - tab
        \b - bell
        \f - form feed

/* More Optional Clauses */
SELECT Name FROM Account 
WHERE Industry = 'Media'
ORDER BY Name (Ensure that we will not get the same record returend multiple times)
LIMIT 125 //Cammot be used in a query that uses aggregate functions but does not use a GROUP BY clause.
OFFSET 3 // The max number you can offsrt by is 2,000

OFFSET (Starting from the top of the record, which one do you want to skip); (Always use some order system to make sure your records are in the same order)

/* WITH clause */

- Unlike the where clause, with allows you to filter by related criteria that is not limited to fields on the object not limited from the clause.
- Not Commonly used

/* GROUP BY */
 //- Can be used with aggregate functions to summarize data and enable you to roll up query results.
// - when using GROUP BY, each field specified in the SELECT clause must be either part of the GROUP or 'aggregated'
/*  
    -You can check to see if a specific field is groupable using the following syntax:*/

    Schema.SObjectType.ObjectAPIName.fields.FieldAPIName.groupable
        i.e. (Schema.SObjectType.Account.fields.Name.groupable)

  SELECT Industry, COUNT(Name)
  FROM Account
  GROUP BY Industry

  SELECT Industry, COUNT(Name)
  FROM Account
  GROUP BY ROLLUP(Industry)

/* HAVING clause */
- can be used to filter results that aggregate functions return
- can use with a GROUP BY clause to filter the results returned by aggregate functions.
- sounds like the WHERE clause? WRONG, WHERE, clause cannot include aggregate functions.

SELECT Industry, COUNT(Name)
FROM Account
GROUP BY Industry
HAVING COUNT(Name) > 1

SELECT Name, COUNT (Id)
FROM Account
GROUP BY Name
HAVING COUNT(Id) > 1

/* FORMAT ()
 - can be used in the SELECT clause
 - applies localized formatting
 - can be used on number, date, time, and currency fields
 */

 SELECT FORMAT(Amount), FORMAT(LastModifiedDate)
 FROM Opportunity

 /*FOR REFERENCE and FOR UPDATE 
 
    FOR REFERENCE
        - allows the LastReferenceDate field to be updated for any retrieved records.

    FOR UPDATE
        - can be used to lock sObject records while they are being updated to prevent thread safety problems
        - can't use ORDER BY when using FOR UPDATE
        - lock gets released when transaction completes
 */

 SELECT Name, Id FROM Contact LIMIT 1 FOR REFERENCE

 /* Aggregate Functions
 * COUNT()
 * AVG()    COUNT_DISTINCT()    MIN()   MAX()   SUM()
 *      - can't use a LIMIT clause in a query that uses an aggregate function, but DOES NOT use a GROUP BY clause
 */

 SELECT Subject__c, AVG(ClassSize__c) 
 FROM ClassSize__c
 GROUP BY Subject__c

 /* Date Functions

    -allow you to group or filter data by date periods

    -CALENDER_MONTH() CALANDER_QUARTER()....
    -DAY_IN_MONTH() DAY_IN_WEEK()....
    -DAY_ONLY()

*/

SELECT CALANDER_YEAR(CloseDate)
FROM Opportunity
GROUP BY CALANDER_YEAR(CloseDate)

/* ***you can't use a date function in the SELECT clause, unless you also include it in the GROUP BY
      clause. Unless, the field used in the Date function is a date field.

/* BONUS TOPIC!!! Location-Based Queries
*
*   - querying geolocation fields
        syntax : NameOfField__latitude__s
        NameOfField__longitude__s

        -DISTANCE
            -calculate the distance between 2 locations
        -GEOLOCATION
            -returns a geolocation based on the provided longitude and latitude
*
*/

SELECT NAME, Location__c
FROM Warehouse__c
WHERE DISTANCE(Location__c, GEOLOCATION(37.775, -122.418), 
'mi') < 20

/* Relationship queries */

//Child to Parent Examples
SELECT FirstName, Account.Name
FROM Contact
LIMIT 2

SELECT Id, Student__r.Name
FROM ClassEnrollment__c

SELECT Id, Name, Account.Id
FROM Contact
WHERE Account.Name LIKE 'U%'

//Parent to Child Examples
SELECT Name, (SELECT Contact.FirstName, Contact.LastName 
FROM Account.Contacts)
FROM Account

SELECT Id, Name,
    (
        SELECT Id, Class__r.Id, Class__r.ClassCode__c
        FROM Student__c.ClassEnrollments__r
        WHERE Class__r.Semester__c = 'Fall'
    )
FROM Student__c

/* SOQL For Loop Example */
for(Account a : [SELECT Id, Name FROM Account])
{
    System.debug(a.Name);
}

/******************************************************
/*  IMPORTANT NOTE:
*   DO NOT, DO NOT, DO NOT EVER put SOQL or SOSL queries in Loops!
*   NOT EVER.
*   WHY??? The Per-Transaction Governor Limit on the Total number of SOQL queries
*   issued is 100 (200)
*
*   DO NOT EVER PUT DML IN A LOOP! BAD!!
*/




 