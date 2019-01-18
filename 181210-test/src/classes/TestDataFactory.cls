@isTest
public class TestDataFactory {
    
    public static List<Student__c> createNStudents(Integer n){
        List<Student__c> students = new List<Student__c>();
        for(Integer i = 0; i < n; i++){
            Student__c s = new Student__c(Name = 'Test Student ' + i,
                                         GradeLevel__c = Constants.STUDENT_GRADELEVEL_VALUES[Math.mod(i, 4)].getValue(),
                                         EnrolledDate__c = Date.newInstance(2018, 08, 13));
            students.add(s);
        }
        System.debug(n + ' students requested. \n' + students.size() + ' students returned.');
        return students;
    }
    
    public static List<Class__c> createNClasses(Integer n, String subject){
        List<Class__c> classes = new List<Class__c>();
        for(Integer i = 0; i < n; i++){
            Class__c c = new Class__c(Approval_Status__c = 'Approved',
                                      Semester__c = (Math.mod(i,2) == 1)?'Spring':'Fall',
                                      Year__c = '2019');
            
            if(subject.equalsIgnoreCase('Any')){
                c.Subject__c = Constants.CLASS_SUBJECT_VALUES[Math.mod(i, Constants.CLASS_SUBJECT_VALUES.size())].getValue();
            } else {
                c.Subject__c = subject;
            }
            
            switch on c.Subject__c {
                when 'Art' {
                    c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i, 5) + 20].getValue();
                }
                when 'English' {
                   c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i, 4) + 7].getValue();
                }
                when 'History' {
                    c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i, 5) + 15].getValue();
                }
                when 'Math' {
                    c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i,7)].getValue();
                }
                when 'Physical Education' {
                    c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i, 6) + 25].getValue();
                }
                when 'Science' {
                    c.Topic__c = Constants.CLASS_TOPIC_VALUES[Math.mod(i, 4) + 11].getValue();
                }
            }
            classes.add(c);
        }
        System.debug(n + ' classes have been requested. ' + classes.size() + ' classes have been returned.');
        return classes;
    }
    
    public static List<ClassEnrollment__c> createEnrollmentsForStudentsInClasses(List<Student__c> students, List<Class__c> classes){
        List<ClassEnrollment__c> enrollments = new List<ClassEnrollment__c>();
        for(Student__c s : students){
            for(Class__c c : classes){
                enrollments.add(new ClassEnrollment__c(Student__c = s.Id,
                                                       Class__c = c.Id));
            }
        }
        return enrollments;
    }
    
    public static List<Assessment__c> createNAssessmentForClasses(Integer n, String recordType, List<Id> classIds){
        List<Assessment__c> assessments = new List<Assessment__c>();
        for(Id classId : classIds){
            for(Integer i = 0; i < n; i++){
                Assessment__c a = new Assessment__c(Class__c = classId);
                if(recordType.equalsIgnoreCase('Any')){
                    a.RecordTypeId = Constants.ASSESSMENT_RECORD_TYPES[Math.mod(i, Constants.ASSESSMENT_RECORD_TYPES.size())].getRecordTypeId();
                	a.Name = 'Test ' + Constants.ASSESSMENT_RECORD_TYPES[Math.mod(i, Constants.ASSESSMENT_RECORD_TYPES.size())].getName() + ' ' + i;
                } else {
                    a.RecordTypeId = Schema.SObjectType.Assessment__c.getRecordTypeInfosByDeveloperName().get(recordType).getRecordTypeId();
                	a.Name = 'Test ' + recordType + ' ' + i;
                }
                assessments.add(a);
            }
        }
        System.debug((n*classIds.size()) + ' assessments requested. \n' + assessments.size() + ' assessments returned.');
        return assessments;
    }
    
}