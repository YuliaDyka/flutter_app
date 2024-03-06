import 'package:flutter/material.dart';
import 'package:lab1/pages/login-page.dart';

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
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'This is home page. Here will be all'
                                  ' information about your budget, your incomes '
                                  'and outcomes. Bellow is the pie-chart to see'
                                  ' your every day progress:',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Icon(
                              Icons.circle_outlined,
                              size: 230,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(icon: const Icon(Icons.arrow_back_ios_sharp),
                                  onPressed: (){},),
                                IconButton(icon: const Icon(Icons.arrow_forward_ios_sharp),
                                  onPressed: (){},),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 14,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('7'),
                                        Text('T'),
                                      ],
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.lightGreen,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                          horizontal: 12,
                                        ),
                                        child: const Column(
                                          children: [
                                            Text('8'),
                                            Text('F'),
                                            Icon(Icons.attach_money_rounded),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 1,
                                      top: 0,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.red,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 14,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('9'),
                                        Text('S'),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('10'),
                                        Text('S'),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('11'),
                                        Text('M'),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('12'),
                                        Text('T'),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightGreen[300],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text('13'),
                                        Text('W'),
                                      ],
                                    ),
                                  ),
                                ),
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
        //),

        /// Profile page
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.perm_contact_calendar_outlined, size: 140,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('User name:', style: TextStyle(fontSize: 15, color:Colors.green.withOpacity(0.6)),  ),
                            const Text('YuliaDyka', style: TextStyle(fontSize: 17, ),  ),
                            Text('email:', style: TextStyle(fontSize: 15, color:Colors.green.withOpacity(0.6)),  ),
                            const Text('example@gmail.com', style: TextStyle(fontSize: 17, ),  ),
                          ],
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        const SizedBox(height: 100,),
                        Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.lightGreen[400],

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Your current balance: \$10000', style: TextStyle(
                                  fontSize: 15, color: Colors.green[800],fontWeight: FontWeight.bold, ),),
                                const SizedBox(height: 25,),
                                const Text('Some very important text..', style: TextStyle(fontSize: 10),),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          height: 40,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.lightGreen[200],
                          ),

                          child: const Padding(

                            padding: EdgeInsets.all(7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add),
                                Text('Add new card'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
