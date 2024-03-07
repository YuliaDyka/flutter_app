import 'package:flutter/material.dart';
import 'package:lab1/elements/login_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Log in'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: LoginContainer(),
        ),
      ),
    );
  }
}
