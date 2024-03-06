import 'package:flutter/material.dart';
import 'package:lab1/pages/home-page.dart';
import 'package:lab1/pages/login-page.dart';

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
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 265,
                height: 440,
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
                          size: 45,
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
                            hintText: 'user name..',
                          ),
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
                            hintText: 'confirm password..',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          child: const Text('Register'),
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
                            'Already have an account?',
                            style: TextStyle(fontSize: 12),
                          ),
                          TextButton(
                            child: const Text('Log In'),
                            style: ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 13))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<LoginPage>(
                                  builder: (BuildContext context) => const LoginPage(),
                                ),
                              );
                            },
                          )
                        ])
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}