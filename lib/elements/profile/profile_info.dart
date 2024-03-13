import 'dart:math';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget{
  const ProfileInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final minSize = min(mediaQuery.size.width, mediaQuery.size.height);
    final List<Widget> children = [];

    children.add(
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
    );
    final mainColumn = Column(
      children: children
          .map(
            (e) => Padding(
          padding: const EdgeInsets.all(3),
          child: e,
        ),
      )
          .toList(),
    );

    final mainContainer = Container(
      padding: EdgeInsets.all(minSize * 0.03),
      width: mediaQuery.size.width,
      child: mainColumn,
    );

    return SingleChildScrollView(child: mainContainer);
  }
}
