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
        borderRadius: BorderRadius.circular(25), // slight rounding
        border: Border.all(
          color: Colors.white70,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          content,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
