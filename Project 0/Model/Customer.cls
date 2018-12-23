public class Customer(){

    public Integer customerID;
    public String firstName;
    public String lastName;
    public Integer age;
    public Date birthDate;

    Customer customer = new Customer();

    public boolean verifyAge(function calculateAge(birthDate)){
        if(calculateAge(birthDate) > 18 ? Account.authorizedUser()=true : Account.authorizedUser()=false);
    }

    public function calculateAge(){
        return TEXT(DATE(YEAR(NOW()))-DATE(YEAR(birthDate)));
    }

}