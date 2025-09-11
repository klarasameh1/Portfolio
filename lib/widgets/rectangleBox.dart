import 'package:flutter/material.dart';

class RectangleBox extends StatelessWidget {
  final String content;

  const RectangleBox({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          right: BorderSide(
              color: Colors.white70, // softer border
              width: 3,
          ),
          left: BorderSide(
            color: Colors.white70, // softer border
            width: 3,
          ),
        ),
      ),
      child:  Center(
        child: Text(
          content,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}



