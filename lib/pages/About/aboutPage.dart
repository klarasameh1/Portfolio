import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(child: RectangleBox(content: "About Me")),
            const SizedBox(height: 40),

            Text(
              "I’m a Flutter Developer",
              style: TextStyle(
                fontSize: 50,
                color: Colors.red[300],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Currently I'm student at my last years at FCAI-CU\n\n",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red[200],
              ),
            ),
            SizedBox(height: 40,),

            Text(
              "I’ve worked on projects ranging from personal portfolios to task management apps, "
                  "where I practiced state management using Provider, responsive layouts and "
                  "integrated various Flutter widgets effectively.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            Text(
              "I Hope to contribute to projects that make a real difference "
                  "while continuously improving as a Flutter developer.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,

              ),
            ),
          ],
        ),
    );
  }
}

// Hi, I’m Klara, a Flutter developer passionate about turning ideas into smooth, engaging mobile experiences. I enjoy building apps from scratch and refining them into user-friendly solutions.
//
// I’ve developed projects ranging from personal portfolios to task management apps, practicing state management with Provider, responsive UI layouts, and Firebase integration. I also pay close attention to UI/UX principles to make applications both functional and beautiful.
//
// My goal is to grow as a developer by contributing to impactful projects while continuously learning and improving my craft.