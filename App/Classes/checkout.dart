import 'dart:io';

class Product {
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;

  String get displayName => 'Produto: $name - Price:$price';
  String get initial => name.substring(0, 1);
}

class Item {
  const Item({required this.product, required this.quantity});
  final Product product;
  final int quantity;

  double get price => quantity * product.price;
}

class Cart {
  //TODO: iTENS COLLECTION

}

const allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'bannanas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.0),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

void main() {
  while (true) {
    stdout.write('What you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    final line = stdin.readLineSync();
    if (line == 'a') {
      if (chooseProduct() != null) {
        print('Produto adicionado ');
      }
    } else if (line == 'v') {
    } else if (line == 'c') {}
  }
}

Product? chooseProduct() {
  var allProducts2 =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products:\n\n$allProducts2\n\nYour choise: ');
  final entry = stdin.readLineSync();
  var returnProduct;
  allProducts.forEach((product) {
    if (product.initial == entry) {
      returnProduct = product;
    }
  });
  return returnProduct;
}
