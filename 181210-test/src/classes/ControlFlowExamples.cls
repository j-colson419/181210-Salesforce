public class ControlFlowExamples {
	
    public static void printIfFive(Integer n){
        if(n == 5){
            System.debug('The number you entered is ' + n + '.');
        }
    }
    
    public static void printWhenFive(Integer n){
        switch on n {
            when 5 {
                System.debug('The number you entered is ' + n + '.');
            }
        }
    }
    
    public static void printWhenFive(String s){
        s = s.toLowerCase(); //Changing s to be all lower case
        switch on s {
            when 'five' {
                System.debug('The string you entered is ' + s + '.');
            }
        }
    }
    
    public static void printWhileLessThanFive(Integer n){
        while (n < 5) {
            System.debug('The number ' + n + ' is less than 5.');
            //NEVER FORGET to have some sort of exit condition
            n += 5; //equivalent of n = n + 5;
        }
    }
    
    public static void printWhileFive(Integer n){
        //This is not a good use case for a while loop.
        //It will either run once, or never run at all.
        while(n == 5){
            System.debug('The number you entered is ' + n + '.');
            n--;
        }
    }
    
    public static void doWhileLessThanFive(Integer n){
        //in order to ensure that we only print to the debug log
        //if n < 5, we have to add an if statement to our do-while.
        //because this is extraneous logic, in this case we should
        //use a while loop instead of a do-while loop.
        do {
            if(n < 5){
                System.debug('The number ' + n + ' is less than 5.');
                n += 5;
            }
        } while (n < 5);
    }
    
    public static void printIndexOfJessica(List<String> names){
        for(Integer i = 0; i < names.size(); i++){
            if(names.get(i).equals('Jessica')){
                // == handles null exceptions, whereas .equals does not
                System.debug('\'Jessica\' was found at index ' + i);
            }
        }
    }
    
    public static void printNameIfJessica(List<String> names){
        for(String name : names){
            if(name.equals('Jessica')){
                System.debug('The name \'' + name + '\' was found!');
                //to get the index of this element: names.indexOf(name);
            }
        }
    }
   
    public static void printIndexOfNumber(List<Integer> intList, Integer numToFind){
        for(Integer i = 0; i < intList.size(); i++){
            if(intList.get(i) == numToFind){
                System.debug('The number ' + numToFind + ' is at index ' + i);
            }
        }
        /* System.debug('The number ' + numToFind + ' is at index ' + intList.indexOf(numToFind));
		*/
    }
    
    public static void printCountOfNumber(List<Integer> intList, Integer numToCount){
        Integer count = 0;
        for(Integer i : intList){
            if(i == numToCount){
                count++;
            }
        }
        System.debug('There are ' + count + ' elements with the value ' + numToCount);
    }
    
}//end of ControlFlowExamples class