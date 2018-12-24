public class Customer(){

    public Customer(){

    public Integer customerID;
    public String firstName;
    public String lastName;
    public Integer age;
    public Date birthDate = TEXT(DATE(MMDDYYYY));
    }

    Customer customer = new Customer(firstName, lastName, birthDate){
        firstName = firstName;
        lastName = lastName;
        birthDate = birthDate;
    }

    public boolean verifyAge(function calculateAge(birthDate)){
        if(calculateAge(birthDate) > 18 ? Account.authorizedUser()=true : Account.authorizedUser()=false);
    }

    public function calculateAge(){
        return TEXT(DATE(YEAR(NOW()))-DATE(YEAR(birthDate)));
    }

}