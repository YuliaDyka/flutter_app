import 'package:flutter/material.dart';
import 'package:lab1/pages/home-page.dart';
import 'package:lab1/pages/register-page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ super.key});


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

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.lightGreen[50],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 70,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        // background: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2), borderRadius: BorderRadius.circular(30)),
                        hintText: 'email..',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        // background: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2), borderRadius: BorderRadius.circular(30)),
                        hintText: 'password..',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: const Text('Login'),
                      style: ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<HomePage>(
                            builder: (BuildContext context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'New user?',
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                        child: const Text('Create Account'),
                        style: ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 13))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<RegisterPage>(
                              builder: (BuildContext context) => const RegisterPage(),
                            ),
                          );
                        },
                      ),
                    ],),
                  ],
                ),),
            ),
          ],
        ),
      ),
    );
  }
}