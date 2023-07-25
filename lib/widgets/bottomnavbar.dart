import 'package:fithnitek/screens/home.dart';
import 'package:fithnitek/screens/notificationspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      backgroundColor: Color(0xff565656),
      selectedItemColor: Color(0xff038C7F),
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home, size: 33),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble_fill, size: 33),
          label: 'chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.bell_fill, size: 33),
          label: 'notifications',
        ),
        BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(17.5),
              child: Image.network(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                  height: 33,
                  width: 33,
                  fit: BoxFit.cover),
            ),
            label: 'profile'),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        switch (index) {
          case 0:
             Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return Home();
                                }));
            break;
          case 1:
            // Action for the second tab
            break;
          case 2:
            Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return NotificationsPage();
                                }));
            break;
          // Add more cases for additional tabs
        }
      },
    );
  }
}
