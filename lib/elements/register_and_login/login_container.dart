import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lab1/elements/register_and_login/custom_elevated_button.dart';
import 'package:lab1/elements/register_and_login/custom_text_button.dart';
import 'package:lab1/elements/register_and_login/custom_text_field.dart';
import 'package:lab1/pages/home_page.dart';
import 'package:lab1/pages/register_page.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});
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
      const CustomTextField(defaultText: 'email..'),
    );
    children.add(
      const CustomTextField(defaultText: 'password..'),
    );

    children.add(
      Row(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.1,
          ),
          const Expanded(
            child: CustomElevatedButton(
              buttonText: 'Log in',
              destinationPage: HomePage(),
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
          const CustomTextButton(
            buttonText: 'Register',
            destinationPage: RegisterPage(),
          )
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
