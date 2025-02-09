import 'package:flutter/material.dart';

class LoginController extends ValueNotifier<String> {
  LoginController() : super('');

  void updateName(String newName) {
    value = newName;
    notifyListeners();
  }
}
