SELECT Id, Name
FROM Account

SELECT Name, Student_Name__c, FORMAT(LastModifiedById)
FROM Student__c

SELECT FORMAT(Name), Semester__c, FORMAT(Class__c), FORMAT(Student__c), Class__r.ClassSize__c, Class__r.Subject__c, Class__r.Topic__c
FROM ClassEnrollment__c

SELECT FORMAT(Name), Semester__c, FORMAT(Class__c), FORMAT(Student__c), Class__r.ClassSize__c, Class__r.Subject__c, Class__r.Topic__c
FROM ClassEnrollment__c
WHERE Class__r.Subject__c = 'Math' 
OR Class__r.Topic__c = 'Pre-Calculus'

SELECT 



