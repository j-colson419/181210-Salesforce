public virtual class Dog implements Pet{
    
    public Boolean isHungry {
        get {
            if(isHungry == null){
                isHungry = true;
            }
            return isHungry;
        }
        set {
            System.debug('The dog\'s hunger has changed.');
            isHungry = value;
        }
    }

    public virtual void feed(){
        System.debug('*pours kibble*');
        isHungry = false;
    }
    
    public void play(){
        System.debug('*throws ball*');
        isHungry = true;
    }
    
    
}