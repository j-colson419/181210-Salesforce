public class SOQLExamples {
    
    public static List<Class__c> getClassesOfSubject(String subject){
        for(Schema.PicklistEntry pe : Constants.CLASS_SUBJECT_VALUES){
            if(subject == pe.getLabel() || subject == pe.getValue()){
                List<Class__c> classes = [SELECT Id, Name, Subject__c, Topic__c
                                  FROM Class__c
                                  WHERE Subject__c = :pe.getValue()];
                return classes;
            }
        }
        throw new CustomException('The subject you entered does not exist.');
    }
    
    public static Student__c getStudentWithHighestGradeInClass(Id classId){
        AggregateResult ar = [SELECT Student__c, MAX(ClassGrade__c)max
                              FROM ClassEnrollment__c
                              WHERE Class__c = :classId
                              GROUP BY Student__c
                              LIMIT 1];
        System.debug(ar);
        Student__c stud = new Student__c();
        stud.Id = (Id)ar.get('Student__c');
        return stud;
    }
    
    public static Set<Student__c> getStudentRosterForClass(Id classId){
        Set<Student__c> studentsInClass = new Set<Student__c>();
        for(ClassEnrollment__c ce : [SELECT Student__c, Student__r.Name
                                     FROM ClassEnrollment__c
                                     WHERE Class__c = :classId]){
                                         Student__c stud = new Student__c();
                                         stud.Id = ce.Student__c;
                                         stud.Name = ce.Student__r.Name;
                                         studentsInClass.add(stud);
                                     }
        return studentsInClass;
    }
    
    //Make sure to know the terms: modular, decoupled, and PaaS
    public static List<Student__c> getStudentRosterForClassSortByGrade(Id classId){
        List<Student__c> studentsInClass = new List<Student__c>();
        for(ClassEnrollment__c ce : [SELECT Student__c, Student__r.Name
                                     FROM ClassEnrollment__c
                                     WHERE Class__c = :classId
                                     ORDER BY ClassGrade__c DESC]){
                                         Student__c stud = new Student__c();
                                         stud.Id = ce.Student__c;
                                         stud.Name = ce.Student__r.Name;
                                         studentsInClass.add(stud);
                                     }
        return studentsInClass;
    }
    
    public static Map<String, Decimal> getAverageClassSizeBySubject(){
        Map<String, Decimal> avgClassSizeBySubject = new Map<String, Decimal>();
        AggregateResult[] resultsList = [SELECT Subject__c, AVG(ClassSize__c)avgSize 
                                         FROM Class__c
                                         GROUP BY Subject__c];
        for(AggregateResult ar : resultsList){
            avgClassSizeBySubject.put((String)ar.get('Subject__c'), (Decimal)ar.get('avgSize'));
        }
        return avgClassSizeBySubject;
    }
    
    public static List<Student__c> getFailingStudentsInClass(Id classId){
        AggregateResult[] arList = [SELECT AVG(Grade__c)avgGrade, Class_Enrollment__r.Student__c,
                                    	Class_Enrollment__r.Student__r.Name, Class_Enrollment__r.Student__r.GradeLevel__c
                                    FROM Grade__c
                                    GROUP BY Class_Enrollment__r.Student__c, Class_Enrollment__r.Class__c,
                                    	Class_Enrollment__r.Student__r.Name, Class_Enrollment__r.Student__r.GradeLevel__c
                                    HAVING Class_Enrollment__r.Class__c = :classId
                                    AND AVG(Grade__c) < 50];
        List<Student__c> failingStudents = new List<Student__c>();
        for(AggregateResult ar : arList){
            Student__c stud = new Student__c();
            stud.Id = (ID)ar.get('Class_Enrollment__r.Student__c');
            stud.Name = (String)ar.get('Class_Enrollment__r.Student__r.Name');
            stud.GradeLevel__c = (String)ar.get('Class_Enrollment__r.Student__r.GradeLevel__c');
            failingStudents.add(stud);
            //failingStudents.add(new Student(Id = (ID)ar.get('Class_Enrollment__r.Student__c'),
            // Name = (String)ar.get('Class_Enrollment__r.Student__r.Name'),
            // GradeLevel__c = (String)ar.get('Class_Enrollment__r.Student__r.GradeLevel__c')));
        }
        return failingStudents;
    }
    
}