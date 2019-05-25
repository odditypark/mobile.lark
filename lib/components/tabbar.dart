import 'package:flutter/material.dart';
import 'package:lark/models/tabbar.dart';

class TabBarPages extends StatefulWidget {
  const TabBarPages({ Key key }) : super(key: key);

  @override
  _TabBarPagesState createState() => _TabBarPagesState();
}

class _TabBarPagesState extends State<TabBarPages> {
  int _currentIndex = 0;
  TabBarModel model = TabBarModel();
  
  void onTabTapped(int index) {
    setState(() { _currentIndex = index; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model.titles[_currentIndex],
        actions: model.actions[_currentIndex],
        leading: model.leadings[_currentIndex]
      ),
      body: model.pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
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
