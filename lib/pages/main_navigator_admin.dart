import 'dart:developer';

import 'package:flutter/material.dart';

import 'admin_home.dart';
import 'admin_profile.dart';

class MainNavigatorAdmin extends StatefulWidget {
  final int select;
  const MainNavigatorAdmin({this.select = 0});

  @override
  State<MainNavigatorAdmin> createState() => _MainNavigatorAdminState();
}

class _MainNavigatorAdminState extends State<MainNavigatorAdmin> {
  int _selectedIndex = 0;

  List<Widget> _screen = [AdminHome(), AdminProfile()];
  @override
  void initState() {
    _selectedIndex = widget.select;
    super.initState();
  }

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
                selectedItemColor: Colors.grey.shade400,
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
