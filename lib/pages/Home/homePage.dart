import 'package:flutter/material.dart';
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
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
            preferredSize: Size(screenSize.width , 70),
            child: CustomAppbar() ,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AboutMeContent(),
              Image.asset('assets/images/me.png')
            ],
          ),
        )
      ),
    );
  }
}
