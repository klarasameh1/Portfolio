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

            RectangleBox(content: "About Me"),
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
              textAlign: TextAlign.start,
            ),
          ],
        ),
    );
  }
}
