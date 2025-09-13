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
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (states) {
            if (states.contains(WidgetState.hovered)) {
              return Color(0xff690B22);
            }
            return Colors.white;
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states){
            if (states.contains(WidgetState.hovered)) {
              return Colors.black12;
            }
            return Colors.transparent ;
          },
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
