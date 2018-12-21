#1
  SELECT Subject__c, COUNT(Picklist)
  FROM Class__c
  GROUP BY Subject__c

#2
 SELECT Topic__c, COUNT(Name)
  FROM Class__c
  GROUP BY ROLLUP(Topic__c)

#3
 SELECT Subject__c, COUNT(Name)
  FROM Student__c
  GROUP BY ROLLUP(Subject__c) 

#4
 SELECT Name, EnrolledDate__c FROM Student LIMIT 1 FOR REFERENCE

#5
 SELECT Id, Name, Student__r.Id
 FROM Class_Enrollment__c
 WHERE Student__r.Name LIKE '%' 

#6
 SELECT Id, Student__r.Name
 FROM Class_Enrollment__c
 LIMIT 2

#7
 SELECT Id, Name,
    (
        SELECT Id, Class__r.Id, Class__r.ClassCode__c
        FROM Student__c.ClassEnrollments__r
        WHERE Class__r.Semester__c = 'Spring'
    )
 FROM Student__c

#8
 SELECT Name, Student__r.StudentId__c
 FROM Class_Enrollment__c
 LIMIT 2

#9
 Student__c a = new Student__c();
 for(Student__c a : [SELECT Id, Name FROM Student__c])
 {
    System.debug(a.Name);
 }

#10
 SELECT Topic__c, COUNT(Name)
 FROM Class__c
 GROUP BY Topic__c
 HAVING COUNT(Name) > 0
