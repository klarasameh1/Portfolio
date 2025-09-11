import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeContent extends StatelessWidget {
  Widget _contactIcon(IconData iconData, VoidCallback onTap){
    return IconButton(
      hoverColor: Color(0xff690B22),
      iconSize: 30,
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
        DefaultTextStyle(
          style: const TextStyle(
            color: Color(0xff909090),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          child: AnimatedTextKit(
            repeatForever: true, // keep looping
            animatedTexts: [
              TypewriterAnimatedText('Software Engineer',
                  speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('Flutter Developer',
                  speed: const Duration(milliseconds: 100)),
              TypewriterAnimatedText('Lifelong Learner',
                  speed: const Duration(milliseconds: 100)),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            _contactIcon(FontAwesomeIcons.envelope, (){ _launchURL("mailto:klarasameh39@gmail.com");}),
            _contactIcon(FontAwesomeIcons.linkedinIn, (){ _launchURL("https://www.linkedin.com/in/klara-sameh");}),
            _contactIcon(FontAwesomeIcons.github, (){ _launchURL("https://github.com/klarasameh1");}),
          ],
        ),
        SizedBox(height: 15,),
        BorderedFlatButton(title: "Download Cv", onTap: (){_launchURL("https://shorturl.at/4T1gA");}, width: 140, height: 40)
      ],
    );
  }
}
Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}