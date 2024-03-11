import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lab1/pages/home_page.dart';
import 'package:lab1/pages/register_page.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<StatefulWidget> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final minSize = min(mediaQuery.size.width, mediaQuery.size.height);
    final maxSize = max(mediaQuery.size.width, mediaQuery.size.height);

    final List<Widget> children = [];
    children.add(
      Icon(
        Icons.person,
        size: minSize * 0.15,
      ),
    );
    children.add(
      TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.03,
          ),
          // background: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: 'email..',
        ),
      ),
    );

    children.add(
      TextField(
        obscureText: true,
        //style: TextStyle(fontSize: minSize * 0.0425),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.03,
          ),
          // background: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: 'password..',
        ),
      ),
    );

    children.add(
      Row(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.1,
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: maxSize * 0.025,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<HomePage>(
                    builder: (BuildContext context) => const HomePage(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );

    children.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'New user?',
            style: TextStyle(
              fontSize: maxSize * 0.02,
            ),
          ),
          TextButton(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: maxSize * 0.02,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<RegisterPage>(
                  builder: (BuildContext context) => const RegisterPage(),
                ),
              );
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );

    final mainColumn = Column(
      //mainAxisSize: MainAxisSize.min,
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
      width: mediaQuery.size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.lightGreen[200],
        borderRadius: BorderRadius.circular(40),
      ),
      child: mainColumn,
    );

    return SingleChildScrollView(child: mainContainer);
  }
}
