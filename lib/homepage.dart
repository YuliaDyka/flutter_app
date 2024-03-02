import 'package:flutter/material.dart';
import 'package:lab1/main.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationExample(),
    );

  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int selectedIndex = 0;

  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Profile',
  //     style: optionStyle,
  //   ),
  //
  // ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('_NavigationExampleState'),
      ),
      // body: Center(
      //   child: widgetOptions.elementAt(selectedIndex),
      // ),

      body: <Widget>[
        /// Home page

               Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                    child: const Text('Go back!'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<MyApp>(builder: (BuildContext context)
                        => const MyApp(),),
                      );
                    },
                  ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      'Home Page',
                      ),
                    ),
                  ),
                ],
              ),
            //),

        /// Profile page
        const Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
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
