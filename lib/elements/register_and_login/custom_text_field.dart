import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final String defaultText;
  const CustomTextField({required this.defaultText, super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return
      TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.03,
          ),
          // background: Colors.white,
          border: const OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(30)),
          ),
          hintText: defaultText,
        ),
      );
  }
}
