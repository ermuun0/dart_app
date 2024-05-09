import 'dart:collection';

import 'package:flutter/material.dart';
import "user.dart";

class GameModel extends ChangeNotifier {
  final List<User> _items = [];
  UnmodifiableListView<User> get items => UnmodifiableListView(_items);

  late UserModel _model;

  void addUser(User user) {
    _items.add(user);
  }

  void changePoint(int userId, int points) {
   // List<User> get users =>
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
