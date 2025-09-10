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
    {"logo": 'assets/skillsLogos/cpp.png', "title": "C++"},

  ];
  final List<Map> skillItems2 = [
    {"logo": 'assets/skillsLogos/firebase.png', "title": "Firebase"},
    {"logo": 'assets/skillsLogos/Bloc.png', "title": "bloC"},
    {"logo": 'assets/skillsLogos/restApi.png', "title": "REST api"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: RectangleBox(content: "Skills")),
        const SizedBox(height: 40),
        Text("Working with:" , style: TextStyle(color: Colors.white70 ),),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // skills
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Wrap(
                  spacing: 10, //h
                  runSpacing: 10, //v
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
        const SizedBox(height: 20),
        Text("Learning:" , style: TextStyle(color: Colors.white70 ),),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // skills
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    for (int i = 0; i < skillItems2.length; i++)
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
                          skillItems2[i]["title"]!,
                          style: const TextStyle(color: Colors.white),
                        ),
                        avatar: Image.asset(
                          skillItems2[i]["logo"]!,
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
