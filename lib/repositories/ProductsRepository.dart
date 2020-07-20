import 'package:utmgrocery/models/Product.dart';

class ProductsRepository {
  List<Product> fetchAllProducts() {
    return [
      new Product("assets/images/mango.png", "Organic Mangoes", 5.0, 1.0, 0),
      new Product("assets/images/watermelon.png", "Watermelon", 4.0, 1.0, 1),
      new Product("assets/images/apple.png", "Red Apples", 3.5, 1.0, 2),
      new Product("assets/images/honey.jpg", "Natural Honey", 25.00, 250, 3),
      new Product("assets/images/vitamins.png", "Multi-Vitamins", 39.0, 250, 4),
      new Product("assets/images/orange.png", "Organic Oranges", 3.5, 1.0, 5),
      new Product("assets/images/cum.png", "Cucumber", 1.99, 500, 6),
    ];
  }
}
