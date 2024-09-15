import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});
  final String text;
 // final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: Colors.black,
        fontWeight:FontWeight.bold,
        fontSize: 22,
      ),
    );
  }
}
