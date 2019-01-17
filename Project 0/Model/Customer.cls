public class Customer{

    public String msg = 'Please ensure all Authorized Users are 18 or older';

    private static Date calculateAge(Date birthDate){
        return TEXT(DATE(YEAR(TODAY()))-DATE(YEAR(birthDate)));
    }

    public String verifyAge(Date birthDate){
        if(calculateAge(birthDate) > 18 ? Account.authorizedUser()=true : System.error(msg))
        }
}