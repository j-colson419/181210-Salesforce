public class BirthdayCakeCandles {

    public static Integer birthdayCakeCandles(List<Integer> intList){
        //need to know what the height of tallest candle is
        //how many candles have this maximum height
        Integer tallestHeight = intList[0];
        Integer numOfTallestCandles = 0;
        for(Integer i : intList){
            //check to see if i = tallestHeight
            System.debug('i = ' + i);
            System.debug('tallestHeight = ' + tallestHeight);
            System.debug('numOfTallestCandles = ' + numOfTallestCandles);
            if(i == tallestHeight){
                numOfTallestCandles++;
                //numOfTallestCandles = numOfTallestCandles + 1;
            } else if(i > tallestHeight){
                tallestHeight = i;
                numOfTallestCandles = 1;
            }
            System.debug('tallestHeight = ' + tallestHeight);
            System.debug('numOfTallestCandles = ' + numOfTallestCandles);
        }
        return numOfTallestCandles;
    }
    
}