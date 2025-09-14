import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';
import 'custom_text_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ContactForm extends StatefulWidget {

  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController messageController = TextEditingController();

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

    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(
            response.statusCode == 200 ? Icons.check_circle : Icons.error,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              response.statusCode == 200
                  ? "Message sent successfully! Thanks for your contact."
                  : "❌ Failed to send. Please try again.",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff690B22),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.opaque,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomTextField(label: "Name", controller: nameController),
              const SizedBox(height: 10),
              CustomTextField(
                label: "Email",
                controller: emailController,
                isEmail: true,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: "Message",
                controller: messageController,
                isMultiline: true,
              ),
              const SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
