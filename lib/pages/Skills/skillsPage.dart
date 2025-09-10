import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({super.key});

  final List<Map> skillItems = [
    {"logo": 'assets/skillsLogos/flutter.png', "title": "Flutter"},
    {"logo": 'assets/skillsLogos/dart.png', "title": "Dart"},
    {"logo": 'assets/skillsLogos/git.png', "title": "Git"},
    {"logo": 'assets/skillsLogos/github.png', "title": "GitHub"},
    {"logo": 'assets/skillsLogos/cpp.png', "title": "C++"},
  ];

  final List<Map> skillItems2 = [
    {"logo": 'assets/skillsLogos/firebase.png', "title": "Firebase"},
    {"logo": 'assets/skillsLogos/Bloc.png', "title": "BloC"},
    {"logo": 'assets/skillsLogos/restApi.png', "title": "REST API"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: RectangleBox(content: "Skills")),
        const SizedBox(height: 40),

        // ===== Working with =====
        Text(
          "Working with:",
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),

        _buildSkillWrap(skillItems),

        const SizedBox(height: 30),

        // ===== Learning =====
        Text(
          "Learning:",
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),

        _buildSkillWrap(skillItems2),
      ],
    );
  }

  /// Reusable method for rendering skill chips
  Widget _buildSkillWrap(List<Map> skills) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (var skill in skills)
                  Chip(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 16.0),
                    backgroundColor: Colors.white10, // faint background
                    side: const BorderSide(color: Colors.white70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    label: Text(
                      skill["title"]!,
                      style: const TextStyle(color: Colors.white),
                    ),
                    avatar: Image.asset(
                      skill["logo"]!,
                      width: 24,
                      height: 24,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
