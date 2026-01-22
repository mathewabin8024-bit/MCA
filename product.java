class Product {
    int pcode;
    String pname;
    double price;

    // Constructor
    Product(int pcode, String pname, double price) {
        this.pcode = pcode;
        this.pname = pname;
        this.price = price;
    }

    public static void main(String[] args) {

        
        Product p1 = new Product(101, "Pen", 10);
        Product p2 = new Product(102, "Notebook", 40);
        Product p3 = new Product(103, "Pencil", 5);

   
        Product lowest = p1;

        if (p2.price < lowest.price) {
            lowest = p2;
        }

        if (p3.price < lowest.price) {
            lowest = p3;
        }
  
        System.out.println("Product with lowest price:");
        System.out.println(lowest.pcode + " " + lowest.pname + " " + lowest.price);
    }
}