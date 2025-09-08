import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/About/aboutPage.dart';
import 'package:my_portfolio/pages/Home/customAppbar.dart';
import 'about_me_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black87,
              Colors.black12,
            ],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Responsive layout
            screenWidth > 800
                ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(child: AboutMeContent()),
                SizedBox(width: 40),
                Image(
                  image: AssetImage('assets/images/me.png'),
                  width: 500,
                  height: 400,
                ),
              ],
            )
                : Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/me.png'),
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                AboutMeContent(),
              ],
            ),
            const SizedBox(height: 80),

            // About me Section
            const AboutPage(),
          ],
        ),
      ),
    );
  }
}
