import 'package:flutter/material.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hi, I am',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        ),
        Text(
          'Klara Sameh',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 80,
            height: 1
          ),
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
              color: Color(0xff909090),
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
        SizedBox(height: 30,),
        Text(
          'Find Me On ',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        ),
      ],
    );
  }
}
