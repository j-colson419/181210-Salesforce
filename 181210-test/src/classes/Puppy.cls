public class Puppy extends Dog {

    public Boolean isPuppy = true;
    
    public override void feed(){
        System.debug('*fills bottle*');
        isHungry = false;
    }
    
}