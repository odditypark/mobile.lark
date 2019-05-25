import 'package:flutter/material.dart';

class LoginModel {
  final String labelText = 'username.';

  void textChanged(text) {
    print("First text field: $text");
  }

  final Text buttonText = Text('Login');
  VoidCallback butonPressed(context) {
    Navigator.pushReplacementNamed(context, '/tabbar');
  }
}
