import 'package:flutter/material.dart';
import 'package:lark/pages/chats.dart';
import 'package:lark/pages/contacts.dart';
import 'package:lark/pages/discover.dart';

class TabBarModel {
  final List<Widget> pages = [
    Chat(),
    Contacts(),
    Discover(),
  ];

  final List<List<Widget>> actions = [
    <Widget>[
      IconButton(icon: Icon(Icons.add)),
    ],
    <Widget>[],
    <Widget>[],
  ];

  final List<Text> titles = [
    Text('Chats'),
    Text('Contacts'),
    Text('Discover'),
  ];

  final List<Widget> leadings = [
    null, null, null,
  ];
}
