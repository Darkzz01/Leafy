import 'package:flutter/material.dart';
import 'package:leafy/data/models/user.dart';

import '../models/product.dart';

class MainProvider extends ChangeNotifier {
  List<User> users = [];

  List<User> get getUsers => users;

  set setUsers(User user) {
    users.add(user);
    notifyListeners();
  }

  Future deleteUser(User user) async {
    users.remove(user);
    notifyListeners();
  }

  List<Product> products = [];

  get getProducts => products;

  set setProducts(Product product) {
    products.add(product);
    notifyListeners();
  }

  Future deleteProduct(Product product) async {
    products.remove(product);
    notifyListeners();
  }
}
