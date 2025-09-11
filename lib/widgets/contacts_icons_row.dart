import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsIconsRow extends StatelessWidget {
  final MainAxisAlignment alignment;

  Widget _contactIcon(IconData iconData, VoidCallback onTap){
    return IconButton(
        hoverColor: Color(0xff690B22),
        iconSize: 30,
        onPressed: onTap,
        icon: Icon(iconData , color: Colors.white,)
    );
  }
  const ContactsIconsRow({
    super.key,
    this.alignment = MainAxisAlignment.center, // default center
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          _contactIcon(FontAwesomeIcons.envelope, (){ _launchURL("mailto:klarasameh39@gmail.com");}),
          _contactIcon(FontAwesomeIcons.linkedinIn, (){ _launchURL("https://www.linkedin.com/in/klara-sameh");}),
          _contactIcon(FontAwesomeIcons.github, (){ _launchURL("https://github.com/klarasameh1");}),
        ],),
    );
  }
}

Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}