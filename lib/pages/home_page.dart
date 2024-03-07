import 'package:flutter/material.dart';
import 'package:lab1/elements/current_day.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade300,
        title: const Text('Family Budget'),
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
      // body: Center(
      //   child: widgetOptions.elementAt(selectedIndex),
      // ),

      body: <Widget>[
        /// Home page

        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      'Home Page',
                    ),
                    Container(
                      width: 400,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'This is home page. Here will be all'
                              ' information about your budget, your '
                              'incomes and outcomes. Bellow is the '
                              'pie-chart to see your every day progress:',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 230,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                CurrentDay(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        /// Profile page
        const Column(
          children: [
            ProfilePage(),
          ],
        ),
      ][selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
