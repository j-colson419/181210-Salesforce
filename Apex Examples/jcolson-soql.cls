/* SOQL Syntax */
SELECT Id, Name
FROM Account
WHERE Name LIKE 'L_ttle%'
/* wildcards available:
 *  - underscore (_) - which represents exactly one charcter
 *  - percent (%) - which represents 0 to many characters
 */
    AND Rating != null
    OR someBool__c = TRUE

/* operators for filtering by multi-select picklist values 
 *
 *      =           equals the specified string
 *      !=
 *      INCLUDES    contains the specified string
 *      EXCLUDES    does not contain the specified string
 *      ;           specifies AND for two or more strings. 
 *                      -Use when two or more items MUST be selected
*/

SELECT Id, MSP1__c FROM CustObj__c 
WHERE MSP1__c = 'AAA;BBB'

SELECT Id, MSP1__c FROM CustObj__c
WHERE MSP1__c INCLUDES ('AAA;BBB', 'CCC')
    AND NOT MSP1__c = 'AAA;BBB;CCC'


/* comparison operators for WHERE Clause expressions:
 *      =, !=, <, <=, >, >=, LIKE, IN, NOT IN, INCLUDES, EXCLUDES
 *      Logical operators: AND, OR, NOT
 *
 *   LIKE
 *      - only supported for String fields
 *      - case-insensitive
 *      - don't use backslash characters except to escape a special character
 *              Special Characters: ', ", \
 *              Escape Sequences:
 *                  \n      new line
 *                  \r      carriage return
 *                  \t      tab
 *                  \b      bell
 *                  \f      form feed
 */

 /* More Optional Clauses */
 SELECT Name, Industry FROM Account
 WHERE Industry = 'Media'
 ORDER BY Name
 LIMIT 3 //cannot be used in a query that uses aggregate functions but does not use a GROUP BY clause
 OFFSET 3 //The max number you can offset by is 2,000

/* WITH clause 
 * 
 *  Unlike the WHERE clause, WITH allows you to filer by related criteria that is not limited to fields from the Object specified in the FROM clause
 * 
 * Not commonly used
 */

 /* GROUP BY
  *
  *     - can be used with aggregate functions to summarize data and enable you to roll up query results 
  *     - when using GROUP BY, each field specified in the SELECT clause must be either part of the GROUP BY clause or 'aggregated'
  *  
  *     You can check to see if a specific field is groupable using the following syntax:
  *     Schema.SObjectType.ObjectAPIName.fields.FieldAPIName.groupable
  *     i.e., Schema.SObjectType.Account.fields.Name.groupable
  */

  SELECT Industry, COUNT(Name)
  FROM Account
  GROUP BY Industry

SELECT Industry, COUNT(Name)
  FROM Account
  GROUP BY ROLLUP(Industry)

/* HAVING clause
 * 
 *  - can be used to filter results that aggregate functions return
 *  - can use with a GROUP BY clause to filter the results returned by aggregate functions
 *  - sounds like the WHERE clause? WRONG, WHERE clause cannot include aggregate functions
 */

SELECT Industry, COUNT(Name)
FROM Account
GROUP BY Industry
HAVING COUNT(Name) > 1

SELECT Name, COUNT(Id)
FROM Account
GROUP BY Name
HAVING Count(Id) = 1

/* FORMAT()
 *  - can be used in the SELECT clause
 *  - applies localized formatting
 *  - can be used on number, date, time, and currency fields
 *
 */

 SELECT FORMAT(Amount), FORMAT(LastModifiedDate)
 FROM Opportunity

 /* FOR REFERENCE and FOR UPDATE
  *     FOR REFERENCE
  *         - allows the LastReferencedDate field to be updated for any retrieved records
  *     FOR UPDATE
  *         - can be used to lock sObject records while theyare being updated to prevent thread safety problems
  *         - can't use ORDER BY when using FOR UPDATE
  *         - lock gets released when transaction completes
  */

  SELECT Name, Id FROM Contact LIMIT 1 FOR REFERENCE

/* Aggregate Functions
 *      COUNT()
 *      AVG()   COUNT_DISTINCT()    MIN()   MAX()   SUM()
 *      - can't use a LIMIT clause in a query that uses an aggregate function, but DOES NOT use a GROUP BY clause
 */

 SELECT AVG(Amount)
 FROM Opportunity

 SELECT Subject__C, AVG(ClassSize__c)
 FROM Class__c
 GROUP BY Subject__c
 
 /* Date Functions
  *
  * - allow you to group or filter data by date periods
  *
  * CALENDAR_MONTH() CALENDAR_QUARTER() ....
  * DAY_IN_MONTH() DAY_IN_WEEK() ...
  * DAY_ONLY()

  * ***you can't use a date function in the SELECT clause, unless you also include it in the GROUP BY clause. Unless, the field used in the Date function is a date field.
  */

  SELECT CALENDAR_YEAR(CloseDate)
  FROM Opportunity
  GROUP BY CALENDAR_YEAR(CloseDate)

  /* BONUS TOPIC!!!! Location-Based Queries
   *    - querying geolocation fields
            syntax: NameOfField__latitude__s NameOfField__longitude__s
   *
   *    - DISTANCE 
   *        - calculate the distance between two locations
   *    - GEOLOCATION
   *        - returns a geolocation based on the provided longitude and latitude
   */
   SELECT Name, Location__c
   FROM Warehouse__c
   WHERE DISTANCE(Location__c, GEOLOCATION(37.775, -122.418), 'mi') < 20

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
SELECT Name, (SELECT Contact.FirstName, Contact.LastName FROM Account.Contacts)
FROM Account

SELECT Id, Name, 
    (
        SELECT Id, Class__r.Id, Class__r.ClassCode__c
        FROM Student__c.ClassEnrollments__r
        WHERE Class__r.Semester__c = 'Fall'
    )
FROM Student__c

/* SOQL For Loop Example */
for (Account a : [SELECT Id, Name FROM Account]){
    System.debug(a.Name);
}

/**************************************************/
/* IMPORTANT NOTE:
 * DO NOT, DO NOT, DO NOT EVER put SOQL or SOSL queries in Loops!
 * NOT EVER.
 * WHY???? The Per-Transaction Governor Limit on the Total number of SOQL queries issued is 100 (200)
 */
 
