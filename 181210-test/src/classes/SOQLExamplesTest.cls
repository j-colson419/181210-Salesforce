@isTest
public class SOQLExamplesTest {

    @testSetup
    public static void setup(){
        //Creating 10 math classes
        List<Class__c> mathClasses = TestDataFactory.createNClasses(10, 'Math');
        	//System.debug(mathClasses);
        //Put created classes in the database
        insert mathClasses;
        	//System.debug(mathClasses);
        
        //Create a list of students, insert them into the database
        List<Student__c> students = TestDataFactory.createNStudents(5);
        insert students;
        
        //Create a list of enrollments, insert them into the database
        List<ClassEnrollment__c> enrollments = TestDataFactory.createEnrollmentsForStudentsInClasses(students, mathClasses);
    	insert enrollments;
    }
    
    @isTest
    public static void testGetClassesOfSubject(){
     /* Positive Case : subject = 'Math'*/
        //setup method created and inserted classes.
        String subject = 'Math';
        //Call method and verify that there are now 10 math classes in the database
        List<Class__c> returnedClasses = SOQLExamples.getClassesOfSubject(subject);
        System.assertEquals(10, returnedClasses.size());
        System.debug(returnedClasses);
        
        /* Negative Case */
        subject = 'Salesforce';
        try {
            returnedClasses = SOQLExamples.getClassesOfSubject(subject);
        } catch (CustomException e){
            System.assertEquals('The subject you entered does not exist.',
                               e.getMessage());
        }
        
        subject = 'math';
        returnedClasses = SOQLExamples.getClassesOfSubject(subject);
        System.assertEquals(10, returnedClasses.size());
    }
    
    @isTest
    public static void testGetStudentRosterForClass(){
        //Students, classes, and class enrollments are inserted by setup()
     /* Positive test case */
        Class__c c = [SELECT Id, ClassSize__c FROM Class__c LIMIT 1];
        Id classId = c.Id;
        Set<Student__c> studentsInClass = SOQLExamples.getStudentRosterForClass(classId);
        //Things we may want to verify about how our method works:
        //	- the number of students returned matches the class size
        //		of the class who's id we passed to the method
        System.assertEquals(c.ClassSize__c, studentsInClass.size());
        
     /* Negative test case */
        ID c2Id = [SELECT Id FROM Student__c LIMIT 1].Id;
        studentsInClass = SOQLExamples.getStudentRosterForClass(c2Id);
        System.assertEquals(0, studentsInClass.size());
        
        c2Id = null;
        studentsInClass = SOQLExamples.getStudentRosterForClass(c2Id);
        System.assertEquals(0, studentsInClass.size());
    }
    
}