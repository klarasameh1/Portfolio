import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RectangleBox(content: "Skills"),
          const SizedBox(height: 40),
          GridView.count(
            crossAxisCount: 5,
          ),
        ],
      ),
    );
  }
}
