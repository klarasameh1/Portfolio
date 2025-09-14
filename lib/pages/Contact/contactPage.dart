import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/contacts_icons_row.dart';
import '../../widgets/rectangleBox.dart';
import 'contactForm.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: RectangleBox(content: "Let's Connect")),
        const SizedBox(height: 50),
        Center(child: ContactsIconsRow()),
        const SizedBox(height: 20),
        Text(
          "or",
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),


        Container(
          width: 600,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.white70),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ContactForm(),
          )
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

