public class Customer(){

    public String msg = 'Please ensure all Authorized Users are over the age of 18'

    public boolean verifyAge(Date birthDate){
        if(calculateAge(birthDate) > 18 ? Account.authorizedUser()=true : System.error(msg));
    }

    public Date calculateAge(){
        return TEXT(DATE(YEAR(TODAY()))-DATE(YEAR(birthDate)));
    }

}