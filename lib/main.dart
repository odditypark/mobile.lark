import 'package:flutter/material.dart';
import './scaffold.dart';

void main() => runApp(Lark());

// App
class Lark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lark',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.black
      ),
      home: LarkScaffold(title: 'Hello'),
    );
  }
}
