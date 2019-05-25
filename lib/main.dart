import 'package:flutter/material.dart';
import 'package:lark/models/main.dart';
import 'package:lark/components/tabbar.dart';

void main() => runApp(Lark());

class Lark extends StatelessWidget {
  final LarkModel model = LarkModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: model.title,
      theme: new ThemeData.dark(),
      routes: {
        '/': (_) => TabBarPages(),
      }
    );
  }
}
