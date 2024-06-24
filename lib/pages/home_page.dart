// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hello_world/pages/due_page.dart';
import 'package:hello_world/pages/profile_page.dart';
import 'package:hello_world/pages/streak_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Method to update index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List all pages
  final List _pages = [StreakPage(), DuePage(), ProfilePage()];

  // selected index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blueAccent,
        ),
        body: _pages[_selectedIndex],
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[100],
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.book, size: 32)),
              // homepage list tile
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    // pop drawer first
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/settingsPage');
                  }),

              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/logoutPage');
                  })
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.fireplace),
              label: "Streak",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.today), label: "Due"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
        ));
  }
}
