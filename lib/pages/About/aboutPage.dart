import 'package:flutter/material.dart';
import '../Home/customAppbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black87,
            Colors.black,
          ],
        ),
      ),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white70, // softer border
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "About Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),


               Text(
                "I’m Klara, a passionate and driven Flutter developer with hands-on "
                    "experience building mobile apps from scratch. I enjoy turning ideas into "
                    "interactive, user-friendly applications and continuously exploring new ways "
                    "to improve my skills.\n\n"
                    "I’ve worked on projects ranging from personal portfolios to task management apps, "
                    "where I practiced state management using Provider, responsive layouts, and integrating "
                    "various Flutter widgets effectively. I’m also familiar with frontend UI/UX design principles.\n\n"
                    "My goal is to contribute to projects that make a real difference while continuously "
                    "improving as a Flutter developer.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.6,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
      ),
    );
  }
}
