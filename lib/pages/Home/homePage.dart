import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/About/aboutPage.dart';
import 'package:my_portfolio/pages/Home/DesktopAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileDrawer.dart';
import '../../widgets/bordered_flat_button.dart';
import '../Skills/skillsPage.dart';
import 'about_me_content.dart';
import 'appBarbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>() ;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: screenWidth > 800
            ? CustomAppbar()
            : MobileAppBar(
              onMenuTap: (){
                scaffoldKey.currentState?.openEndDrawer();
              },
            )
      ),
      endDrawer: MobileDrawer(), // for mobiles

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
          padding: const EdgeInsets.all(25),
          children: [
            SizedBox(width: 40),
            // Responsive layout
            screenWidth > 800
                ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(child: AboutMeContent()),
                SizedBox(width: 40),
                Image(
                  image: AssetImage('assets/images/ME.PNG'),
                  width: 500,
                  height: 400,
                ),
              ],
            )
                : Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/ME.PNG'),
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                AboutMeContent(),
              ],
            ),

            const SizedBox(height: 80),
            const AboutPage(),

            const SizedBox(height: 80),
            const SkillsPage(),
          ],
        ),
      ),
    );
  }
}
