import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/widgets/rectangleBox.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Section header
            Center(child: RectangleBox(content: "About Me")),
            const SizedBox(height: 40),

            // Typing effect for main title
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 25,
                color: Color(0xff909090),
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'I’m a Flutter Developer',
                    speed: Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    'Building Interactive Apps',
                    speed: Duration(milliseconds: 100),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Short tagline
            Text(
              "Turning ideas into functional and beautiful mobile applications 🚀",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 25),

            // Paragraph 1: Introduction
            const Text(
              "Hi, I’m Klara Sameh, a passionate Flutter developer who loves "
                  "turning ideas into interactive, user-friendly mobile applications. "
                  "I enjoy solving problems, learning new technologies, and building apps "
                  "that have a real impact on users.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // Paragraph 2: Education / Current Status
            const Text(
              "I’m currently a student at FCAI - Cairo University, learning and growing "
                  "my skills in cross-platform app development.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // Paragraph 3: Experience / Projects
            const Text(
              "I’ve worked on projects ranging from personal portfolios, task management apps, "
                  "to mini shopping apps, practicing state management with Provider and exploring "
                  "clean architecture patterns. I pay close attention to UI/UX principles to make "
                  "applications both functional and visually appealing.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // Paragraph 4: Skills & Aspirations
            const Text(
              "My toolkit includes Flutter, Dart, Provider, and Git/GitHub. "
                  "I’m continuously expanding my knowledge of Firebase ,REST APIs, BLoC, and modern mobile design patterns. "
                  "My goal is to grow as a Flutter developer, contributing to impactful projects "
                  "while continuously learning and improving my craft.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // Paragraph 5: Personal touch
             Text(
              "When I’m not coding, you’ll find me exploring design trends, reading about technology, "
                  "or enjoying a good cup of coffee ☕.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent[100],
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
