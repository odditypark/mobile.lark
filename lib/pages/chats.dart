import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key key}):super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello, chats')
    );
  }
}
