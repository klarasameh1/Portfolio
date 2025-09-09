import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(child: RectangleBox(content: "About Me")),
            const SizedBox(height: 40),

            Text(
              "I’m a Flutter Developer",
              style: TextStyle(
                fontSize: 50,
                color: Color(0xff681414),
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 20, color: Colors.white),
                children: [
                  const TextSpan(text: "Currently, I’m a student at  "),
                  TextSpan(
                    text: "FCAI - CU",
                    style: TextStyle(
                      color: Color(0xff909090),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Experience
            const Text(
              textAlign: TextAlign.center,
              "I’ve worked on projects ranging from personal portfolio to task management app and mini shopping app, "
                  "\npracticing state management with Provider, I also pay close attention to UI/UX principles to make applications both functional and beautiful"
                  'My goal is to grow as a developer by contributing to impactful projects while continuously learning and improving my craft.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Goal
            const Text(
              "My goal is to contribute to projects that make a real difference "
                  "while continuously improving as a Flutter developer.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ],
      ),
    );
  }
}
