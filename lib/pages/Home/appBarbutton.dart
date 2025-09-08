import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const AppBarButton({super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child:Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
    );
  }
}

