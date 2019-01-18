@isTest
public class TestDataFactoryTest {

    @isTest
    public static void test(){
        List<Student__c> students = TestDataFactory.createNStudents(5);
        System.debug(students.size());
        List<Class__c> classes = TestDataFactory.createNClasses(1, 'Math');
        insert classes;
        List<Id> classIds = new List<Id>{classes[0].Id};
        
        Integer numOfClasses = [SELECT COUNT() FROM Class__c];
        System.assertEquals(1, numOfClasses);
        List<Assessment__c> assessments = TestDataFactory.createNAssessmentForClasses(3, 'Any', classIds);
        System.debug(assessments);
    }
}