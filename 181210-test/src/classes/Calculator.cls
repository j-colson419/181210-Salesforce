public class Calculator {
    
    public static Integer add(List<Integer> intList){
        Integer sum = 0;
        if(intList.size() == 0){
            return null;
        } else {
            for(Integer i : intList){
                if(i != null){
                    sum += i; 
                }
            }
        }
        return sum;
    }
    
    public static Decimal average(List<Integer> intList){
        Decimal avg;
        if(intList == null || intList.size() == 0){
            return null;
        } else {
            Integer size = 0;
            for(Integer i : intList){
                if(i != null) size++;
            }
            avg = Calculator.add(intList)/size;
        }
        return avg;
    }
    
    public static Integer max(List<Integer> intList){
        Integer max;
        if(intList == null || intList.size() == 0){
            return null;
        } else {
            for(Integer i : intList){
                if(i != null && (max == null || i > max)){
                    max = i;
                }
            }
        }
        return max;
    }
    
}