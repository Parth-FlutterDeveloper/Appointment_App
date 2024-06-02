import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_2/Screens/Home_Screen.dart';
import 'package:flutter_pro_2/Screens/Message_Screen.dart';
import 'package:flutter_pro_2/Screens/Schedule_Screen.dart';
import 'package:flutter_pro_2/Screens/Settings_Screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _navbarScreens = [
    // Home Screen
    HomeScreen(),
    // Messages Screen
    MessageScreen(),
    // Schedule Screen
    Schedule_Screen(),
    // Settings Screen
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _navbarScreens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Schedule"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings"
            ),
          ],
        ),
      ),
    );
  }
}
