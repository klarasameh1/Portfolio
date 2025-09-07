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
      ),
    );
  }
}
