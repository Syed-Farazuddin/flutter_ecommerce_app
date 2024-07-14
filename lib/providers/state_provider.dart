import 'package:flutter/material.dart';
import 'package:ecommerce/models/shoes.dart';

class Stateprovider extends ChangeNotifier {
  List<Shoe> cart = [];

  void addToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  void deleteFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
