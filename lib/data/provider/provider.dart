import 'package:flutter/material.dart';
import 'package:leafy/data/models/user.dart';

class MainProvider extends ChangeNotifier {
  List<User> users = [];

  List<User> get getUsers => users;

  set setUsers(User user) {
    users.add(user);
    notifyListeners();
  }

  Future delete(User user) async {
    users.remove(user);
    notifyListeners();
  }
}
