import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, super.key});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController = TextEditingController();
  String enteredText = '';
  String targetText = '';

  void _setText() {
    setState(() {
      final strList = enteredText.split(' ');
      targetText = '';

      for (var str in strList) {
        if (str.isEmpty) {
          continue;
        }

        if (targetText.isNotEmpty) {
          targetText += '-';
        }

        if (str.length == 1) {
          final digit = int.tryParse(str);
          if (digit != null) {
            targetText += strNumbers[digit];
            continue;
          }
        }

        final index = strNumbers.indexOf(str);
        if (index != -1) {
          targetText += index.toString();
        } else {
          targetText += 'ERR';
        }
      }
    });
  }

  static const List<String> strNumbers = [
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              style: Theme.of(context).textTheme.headlineMedium,
              targetText,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter ...',
                ),
                onChanged: (inputText) {
                  enteredText = inputText;
                },
              ),
            ),
            ElevatedButton(
              onPressed: _setText,
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(8),
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 215, 222, 250),
                ),
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
