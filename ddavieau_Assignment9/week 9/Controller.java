class Controller {
    
    //field
    private Pizza p;

    //constructors
    punlic Controller() {
        }
    
    public Controller(Pizza p) {
        this.p = p;
    }
        
    public static void main(String[]args) {
        Controller c = new Controller(new Pizza());
    }
}