public class ApexHW1{

   public static Integer nFibonacci(Integer n){

        /*test cases
        input 0,      output 0
        input 1,      output 1
        input 2,      output 1
        input 10,     output 65
        */
        Integer num1 = 0;
        Integer num2 = 1;
        Integer nFib;

        while(n != null && n >= 0 && n <= 10){
            if(n == 0){
                return 0;
            }
            else if(n >= 1){
                nFib = num1 + num2;
                num1 += num2;
                num2 += nFib;
                n++;
                return nFib;
            }
            else{
                System.debug('NULL POINTER error, please enter a number between 0 and 10');
            }
        }
        
        return nFib;
    }

    public static Integer[] sortArray(Integer[] intList){

        /*sort Test Case
        input [2,4,5,1,3,1]         output [1,1,2,3,4,5]
        input [5,4,3,2,1]           output [1,2,3,4,5]
        */


        return intList;
    }

    public static Integer nFactorial(Integer n){

        /*
        input 0     output 1
        input 1     output 1
        input 3     output 6
        */
        Integer nFact;

        while(n != null && n > 0){
            nFact = n * (n-1);
            --n;
        }

        return nfact;
    }

    public static Integer[] rotateLeftNTimes(Integer[] array, Integer n){

        /*
        input [1,2,3,4,5], 1        output [2,3,4,5,1]
        input [1,2,3,4,5], 6        output [2,3,4,5,1]
        input [1,2,3,4,5], 3        output [4,5,1,2,3]
        */

        Integer[] first = arr[0];
        Integer[] next = arr[1];
        Integer[] last = arr.size();

        for(Integer i = 0; i <= n; i++){
            last = last.first;
            first = first.next;
            next[] = next[i];
        }

        return arr;
	
    }

    public static Boolean bracketsAreBalanced(String s){

        /*
        Balance Brackets
        ()
        ()()
        (())
        ({[]})

        Unbalanced Brackets
        (
        )
        (()
        ([)]
        return true if balanced and false if unbalanced
        */
        List<balancedBrackets> lstBrackets = new List<balancedBrackets>();
        
        
        return s;
    }

}