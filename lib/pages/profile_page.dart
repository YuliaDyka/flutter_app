import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.perm_contact_calendar_outlined,
                            size: 140,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User name:',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green.withOpacity(0.6),
                                ),
                              ),
                              const Text(
                                'YuliaDyka',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                'email:',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green.withOpacity(0.6),
                                ),
                              ),
                              const Text(
                                'example@gmail.com',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
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
                                  Text(
                                    'Your current balance: \$10000',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green[800],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Some very important text..',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
        ],
      ),
    );
  }
}
