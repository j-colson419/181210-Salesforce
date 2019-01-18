public class Constants {

    /* Assessment Record Type Ids*/
    public static final Id HOMEWORK_RECORD_TYPE_ID = Schema.SObjectType.Assessment__c.getRecordTypeInfosByDeveloperName().get('Homework').getRecordTypeId();
    public static final Id TEST_RECORD_TYPE_ID = Schema.SObjectType.Assessment__c.getRecordTypeInfosByDeveloperName().get('Test').getRecordTypeId();
    public static final Id QUIZ_RECORD_TYPE_ID = Schema.SObjectType.Assessment__c.getRecordTypeInfosByDeveloperName().get('Quiz').getRecordTypeId();
	/* use .getRecordTypeId() to access the ids from the following list */
    public static final List<Schema.RecordTypeInfo> ASSESSMENT_RECORD_TYPES = Schema.SObjectType.Assessment__c.getRecordTypeInfos();
    
    /* Picklist Values */
    //Use the .getValue() method for an element in the list to be able to assign
    //to an sObject field
    public static final List<Schema.PicklistEntry> CLASS_SUBJECT_VALUES = Class__c.Subject__c.getDescribe().getPicklistValues();
    public static final List<Schema.PicklistEntry> STUDENT_GRADELEVEL_VALUES = Student__c.GradeLevel__c.getDescribe().getPicklistValues();
    public static final List<Schema.PicklistEntry> CLASS_TOPIC_VALUES = Class__c.Topic__c.getDescribe().getPicklistValues();
    public static final List<Schema.PicklistEntry> CLASS_SEMESTER_VALUES = Class__c.SEMESTER__c.getDescribe().getPicklistValues();
	public static final List<Schema.PicklistEntry> ASSESSMENT_RESTRICTION_VALUES = Assessment__c.AssessmentRestrictions__c.getDescribe().getPicklistValues();
	
    /* */
    //public static final List<String> DUMMY_NAMES_LIST = new List<String>{''}
    
}