import 'package:flutter/material.dart';

class CurrentDay extends StatefulWidget {
  const CurrentDay({super.key});

  @override
  State<StatefulWidget> createState() => _CurrentDayState();
}

class _CurrentDayState extends State<CurrentDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_sharp),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              onPressed: () {},
            ),
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
                  horizontal: 13,
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
                  horizontal: 13,
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
                  horizontal: 11,
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
                  horizontal: 11,
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
                  horizontal: 11,
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
                  horizontal: 11,
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
    );
  }
}
