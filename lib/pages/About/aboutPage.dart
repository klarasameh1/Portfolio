import 'package:flutter/material.dart';
import '../Home/customAppbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.black87
          ],
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width , 70),
          child: CustomAppbar() ,
        ),
          body:
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1
                      )
                    ) ,
                    child: Center(
                      child: Text(
                        "About Me",
                        style: TextStyle(
                          color:  Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,

                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

// "I’m Klara, a passionate and driven Flutter developer with hands-on "
// "experience building mobile apps from scratch. I enjoy turning ideas into interactive,"
// " user-friendly applications \nand continuously exploring new ways to improve my skills."
// "I’ve worked on projects ranging from personal portfolios to task management apps , where "
// "    I’ve practiced state management using Provider,\n responsive layouts, and integrating various Flutter w"
// "idgets effectively. I’m also familiar with frontend UI/UX design principles"
// "My goal is to contribute to projects that make a real difference \nwhile continuously improving as a Flutter developer.",