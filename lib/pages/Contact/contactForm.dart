import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_text_field.dart';

class ContactForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  ContactForm({super.key});

  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'klarasameh39@gmail.com',
      queryParameters: {
        'subject': 'New message from Portfolio',
        'body':
        'Name: ${nameController.text}\nEmail: ${emailController.text}\n\nMessage: ${messageController.text}',
      },
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 10,),
          CustomTextField(label: "name", controller: nameController),
          SizedBox(height: 10,),
          CustomTextField(label: "Email", controller: emailController),
          SizedBox(height: 10,),
          CustomTextField(label: "Message", controller: messageController, isMultiline: true),
          SizedBox(height: 10,),

          BorderedFlatButton(
            title: 'Send',
            onTap: () { _sendEmail; },
            width: 100,
            height: 40,
          ),
        ],
      ),
    );
  }
}