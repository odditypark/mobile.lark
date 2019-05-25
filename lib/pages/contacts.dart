import 'package:flutter/material.dart';

// mock data
class ChatOverview {
  String name;
  String message;
  String avatar;

  ChatOverview(this.name, this.message, this.avatar);
}

List<ChatOverview> _chatOverview = [
  ChatOverview('David', 'this is major tom to ground control', ''),
];

// 
class Contacts extends StatefulWidget {
  const Contacts({Key key}):super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contacts page')
    );
  }
}
