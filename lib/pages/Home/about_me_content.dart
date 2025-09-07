import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMeContent extends StatelessWidget {
  Widget _contactIcon(IconData iconData, VoidCallback onTap){
    return IconButton(
        onPressed: onTap,
        icon: Icon(iconData , color: Colors.white,)
    );
  }
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
        Row(
          children: [
            _contactIcon(FontAwesomeIcons.at, (){}),
            _contactIcon(FontAwesomeIcons.linkedinIn, (){}),
            _contactIcon(FontAwesomeIcons.github, (){}),
          ],
        ),
        SizedBox(height: 15,),
        BorderedFlatButton(title: "Download Cv", onTap: (){}, width: 120, height: 40)
      ],
    );
  }
}
