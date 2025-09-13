import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({super.key});

  final List<Map> skillItems = [
    {"logo": 'assets/skillsLogos/flutter.png', "title": "Flutter"},
    {"logo": 'assets/skillsLogos/dart.png', "title": "Dart"},
    {"logo": 'assets/skillsLogos/dart.png', "title": "Provider"},
    {"logo": 'assets/skillsLogos/cpp.png', "title": "C++"},
    {"logo": 'assets/skillsLogos/git.png', "title": "Git"},
    {"logo": 'assets/skillsLogos/github.png', "title": "GitHub"},
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
        const SizedBox(height: 50),

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
            constraints: const BoxConstraints(maxWidth: 600),
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                for (var skill in skills)
                  SizedBox(
                    width: 150, // fixed width for all chips
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xff690B22),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // centers content
                        children: [
                          Image.asset(
                            skill["logo"]!,
                            width: 28,
                            height: 28,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              skill["title"]!,
                              textAlign: TextAlign.center, // keeps text centered
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
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
