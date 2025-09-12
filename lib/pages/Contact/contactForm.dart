import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_text_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  ContactForm({super.key});

  Future<void> sendEmail(
    BuildContext context,
    String name,
    String email,
    String message,
  ) async {
    const serviceId = "service_lphgjap";
    const templateId = "template_45zn1jh";
    const userId = "1A-rHCP8T9KGhuFo9";

    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    final response = await http.post(
      url,
      headers: {
        "origin": "http://localhost",
        "Content-Type": "application/json",
      },
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": userId,
        "template_params": {
          "from_name": name,
          "from_email": email,
          "message": message,
        },
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("✅ Message sent successfully!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Failed to send: ${response.body}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextField(label: "name", controller: nameController),
          SizedBox(height: 10),
          CustomTextField(label: "Email", controller: emailController),
          SizedBox(height: 10),
          CustomTextField(
            label: "Message",
            controller: messageController,
            isMultiline: true,
          ),
          SizedBox(height: 10),

          BorderedFlatButton(
            title: 'Send',
            onTap: () {
              if (_formKey.currentState!.validate()) {
                sendEmail(
                  context,
                  nameController.text,
                  emailController.text,
                  messageController.text,
                );
              }
            },
            width: 100,
            height: 40,
          ),
        ],
      ),
    );
  }
}
