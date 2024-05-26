import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manbudget/pages/user_home.dart';

import 'admin_home.dart';
import 'admin_profile.dart';
import 'user_profile.dart';

class MainNavigatorUser extends StatefulWidget {
  const MainNavigatorUser({super.key});

  @override
  State<MainNavigatorUser> createState() => _MainNavigatorUserState();
}

class _MainNavigatorUserState extends State<MainNavigatorUser> {
  int _selectedIndex = 0;
  List<Widget> _screen = [UserHome(), UserProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_selectedIndex],
        bottomNavigationBar: Container(
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                backgroundColor: Colors.purple,
                selectedItemColor: Colors.grey.shade500,
                unselectedItemColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: 'Profile'),
                ],
                onTap: (i) {
                  setState(() {
                    _selectedIndex = i;
                  });
                },
              ),
            )));
  }
}
