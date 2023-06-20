import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});      

  final String text;      //will never be changed so guaranteed to be stored & used by dart

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
