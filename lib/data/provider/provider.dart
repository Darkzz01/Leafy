import 'package:flutter/material.dart';
import 'package:leafy/data/models/user.dart';

class MainProvider extends ChangeNotifier {
  List<User> users = [];

  List<User> get getUsers => users;

  set setUsers(User user) {
    users.add(user);
    notifyListeners();
  }

  Future getData() async {
    List list = [];

    await Future.delayed(const Duration(seconds: 2), () {
      list = users;
    });

    return list;
  }
}
