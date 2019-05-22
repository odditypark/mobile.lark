import 'package:flutter/material.dart';
import 'pages/test.dart';

class LarkScaffold extends StatefulWidget {
  const LarkScaffold({ Key key, this.title }) : super(key: key);

  final String title;
  
  @override
  _LarkScaffoldState createState() => _LarkScaffoldState();
}

class _LarkScaffoldState extends State<LarkScaffold> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
  ];
  
  void onTabTapped(int index) {
    setState(() { _currentIndex = index; });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColorDark,
        type: BottomNavigationBarType.fixed
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts), title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toys), title: Text('')
          ),
        ],
      ),
    );
  }
}
