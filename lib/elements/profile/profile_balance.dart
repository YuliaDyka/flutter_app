import 'package:flutter/material.dart';

class ProfileBalance extends StatelessWidget{
  const ProfileBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
