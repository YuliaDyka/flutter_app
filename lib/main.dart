// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/pages/home-page.dart';
import 'package:lab1/pages/login-page.dart';
import 'package:lab1/pages/register-page.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen.shade100),
        useMaterial3: true,
      ),
      home: LoginPage(),
        routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
         '/homepage': (context) => const HomePage()
        },
      // home: const MyHomePage(title: 'Login Page'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({required this.title, super.key});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 250,
//               height: 350,
//               decoration: BoxDecoration(
//                 color: Colors.lightGreen[50],
//                 borderRadius: BorderRadius.circular(40),
//               ),
//               child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     children: [
//                       const Icon(
//                         Icons.person,
//                         size: 70,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           contentPadding: const EdgeInsets.symmetric(
//                             vertical: 10,
//                             horizontal: 15,
//                           ),
//                           // background: Colors.white,
//                           border: OutlineInputBorder(
//                               borderSide: const BorderSide(width: 2), borderRadius: BorderRadius.circular(30)),
//                           hintText: 'email..',
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           contentPadding: const EdgeInsets.symmetric(
//                             vertical: 10,
//                             horizontal: 15,
//                           ),
//                           // background: Colors.white,
//                           border: OutlineInputBorder(
//                               borderSide: const BorderSide(width: 2), borderRadius: BorderRadius.circular(30)),
//                           hintText: 'password..',
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       ElevatedButton(
//                         child: const Text('Login'),
//                         style: ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute<HomePage>(
//                               builder: (BuildContext context) => const HomePage(),
//                             ),
//                           );
//                         },
//                       ),
//                       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                         Text(
//                           'New user?',
//                           style: TextStyle(fontSize: 12),
//                         ),
//                         TextButton(
//                           child: const Text('Create Account'),
//                           style: ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 13))),
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute<Register>(
//                                 builder: (BuildContext context) => const Register(),
//                               ),
//                             );
//                           },
//                         ),
//                       ],),
//                     ],
//                   ),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
