public class Pizza {
    //fields. Make them provate and make cunstructors, methods etc public. 
    //Because private they cannot be accessed outside of the Piza class
    private String[] toppings;
    private float diameter;
    private float price;

    //constructors
    //default constructor
    public Pizza() {
        println("What's up everybody!");
    }

    //Overloaded constructor
    public Pizza(String[] toppings, float diameter, float price) {
        System.out.println("in overloaded cstr");
    }

    //methods
    public void assemble() {
    }

    //getters and setters
    public void setPrice(float price) {
        if (price > 0 && price < 50) {
            this.price = price;
            }
    }

    public float getPrice () {
        return price; //we need to do this because there is no way to get the price because we made it private
    }

    //main method (at least 1 required for Java, may have many )
    public static void main(String[]]args) {
        Pizza p = new Pizza();
    }

}