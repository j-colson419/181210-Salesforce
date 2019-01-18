public virtual class SuperClass {

    public String prefix = 'Miss';
    public String firstName = 'Jessica';
    public String lastName = 'Colson';
    
    public virtual void printName(){
        System.debug('My name is ' + prefix + ' ' + firstName + ' ' + lastName);
    }
    
}