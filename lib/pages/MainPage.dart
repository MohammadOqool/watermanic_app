import 'package:flutter/material.dart';
import 'package:watermanicapp/pages/HistoryPage.dart';
import 'package:watermanicapp/pages/NotificationPage.dart';
import 'package:watermanicapp/widgets/AppBarWidget.dart';

import 'HomePage.dart';
import 'SettingPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  String _title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(_title),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("History"),
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            title: Text("Notification"),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text("Setting"),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: handlePages(),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        _title = "Home";
      } else if (_currentIndex == 1) {
        _title = "History";
      } else if (_currentIndex == 2) {
        _title = "Notification";
      } else if (_currentIndex == 3) {
        _title = "Setting";
      }
    });
  }

  handlePages() {
    if (_currentIndex == 0) {
      return HomePage();
    } else if (_currentIndex == 1) {
      return HistoryPage();
    } else if (_currentIndex == 2) {
      return NotificationPage();
    } else if (_currentIndex == 3) {
      return SettingPage();
    }
  }
}
