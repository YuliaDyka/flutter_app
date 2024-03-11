import 'package:flutter/material.dart';
import 'package:lab1/pages/home_page.dart';
import 'package:lab1/pages/login_page.dart';
import 'package:lab1/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Family Budget App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen.shade100,
        ),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/homepage': (context) => const HomePage(),
      },
      // home: const MyHomePage(title: 'Login Page'),
    );
  }
}
