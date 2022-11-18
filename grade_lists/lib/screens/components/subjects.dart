import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  const Subject({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${index + 1}. $text",
            style: TextStyle(color: Color(0xffffffff), fontSize: 16),
          ),
        ],
      ),
    );
  }
}