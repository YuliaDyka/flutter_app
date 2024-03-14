import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lab1/elements/home/home_container.dart';
import 'package:lab1/pages/login_page.dart';
import 'package:lab1/pages/profile_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double bottomNavigationBarHeight =
    min(80, mediaQuery.size.height * 0.1,);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade300,
          title: const Text('Family Budget'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<LoginPage>(
                    builder: (BuildContext context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red[400],
              ),
              child: const Text('Logout'),
            ),
          ],
        ),
        body: [
          /// Home page
          const SingleChildScrollView(
            child: Column(
              children: [
                HomeContainer(),
              ],
            ),
          )
          /// Profile page
          ,const SingleChildScrollView(
            child: Column(
              children: [
                ProfilePage(),
              ],
            ),
          )
        ,][selectedIndex],
        bottomNavigationBar: SizedBox(
          height: bottomNavigationBarHeight,
          child: BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: onItemTapped,
          ),
        ),
    );
  }
}
