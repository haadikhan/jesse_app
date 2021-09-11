import 'package:flutter/material.dart';
import 'package:jesse_app/user_interface/chat.dart';
import 'package:jesse_app/user_interface/explore_screen.dart';
import 'package:jesse_app/user_interface/travel.dart';
import 'package:jesse_app/user_interface/profile.dart';

class RoutingTabs extends StatefulWidget {
  @override
  _RoutingTabsState createState() => _RoutingTabsState();
}

class _RoutingTabsState extends State<RoutingTabs> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    ExploreScreen(),
    Travel(),
    Chat(),
    Profile(),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.white30,
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            color: Colors.white30,
          ),
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Travel'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
