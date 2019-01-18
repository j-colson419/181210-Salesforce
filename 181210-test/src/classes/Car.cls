public class Car {

    public String make;
    public String model;
    public Integer year;
    public Decimal speed; //speed measured in miles per hour
    
    public Decimal getSpeed(){
        return speed;
    } //This method has a return value
    
    public void setSpeed(Decimal newSpeed){
        speed = newSpeed;
    }//This method has a 'side effect'
    
    public void accelerate(){
        speed += 0.5;
        // the above line is short hand notation for: speed = speed + 0.5;
    }//This method has a 'side effect'
    
}