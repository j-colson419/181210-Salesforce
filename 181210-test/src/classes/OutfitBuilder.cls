public class OutfitBuilder {

    public String shoes;
    
    public void chooseShoes(String season){
        switch on season {
            when 'Spring' {
                this.shoes = 'Rain Boots';
            }
            when 'Summer' {
                this.shoes = 'Flip Flops';
            }
            when 'Fall' {
                this.shoes = 'Gym Shoes';
            }
            when 'Winter' {
                this.shoes = 'Snow Boots';
            }
            when else {
                this.shoes = 'Vans';
            }
        }
    }
    
    public List<String> shoesForNDays(Integer n, String season){
        if(n <= 0){
            return new List<String>();
        }
        List<String> shoes = new List<String>();
        for(Integer i = 0; i < n; i++){
            chooseShoes(season);
            shoes.add(this.shoes);
        }
        return shoes;
    }
    
}