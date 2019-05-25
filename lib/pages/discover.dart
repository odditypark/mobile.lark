import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key key}):super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  Widget build(BuildContext context) {
    return Center(
      child: Text('Discover list page')
    );
  }
}
