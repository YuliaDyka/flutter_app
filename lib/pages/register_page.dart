import 'package:flutter/material.dart';
import 'package:lab1/elements/register_container.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade300,
        title: const Text('Register new User'),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: RegisterContainer(),
      ),
    );
  }
}
