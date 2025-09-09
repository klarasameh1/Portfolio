import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({super.key});

  final List<Map> skillItems = [
    {"logo": 'assets/skillsLogos/flutter.png', "title": "Flutter"},
    {"logo": 'assets/skillsLogos/dart.png', "title": "Dart"},
    {"logo": 'assets/skillsLogos/git.png', "title": "git"},
    {"logo": 'assets/skillsLogos/github.png', "title": "github"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: RectangleBox(content: "Skills")),
        const SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // skills
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: [
                    for (int i = 0; i < skillItems.length; i++)
                      Chip(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        backgroundColor:Colors.transparent,
                        side: BorderSide(
                          color: Colors.white70
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // small radius for rectangle
                        ),
                        label: Text(
                          skillItems[i]["title"]!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        avatar: Image.asset(
                          skillItems[i]["logo"]!,
                          width: 24,
                          height: 24,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
