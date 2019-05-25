import 'package:flutter/material.dart';
import 'pages/scaffold.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(Lark());

class Lark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lark',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.black
      ),
      routes: {
        '/': (_) => LarkScaffold(title: 'Hello'),
        "/widget": (_) => new WebviewScaffold(
          url: "https://baidu.com",
          appBar: new AppBar(
            title: const Text('Widget webview'),
          ),
          withZoom: true,
          scrollBar: false,
          withLocalStorage: true,
          hidden: true,
          initialChild: Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text('Waiting.....'),
            ),
          ),
        ),
      }
    );
  }
}
