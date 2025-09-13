import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/About/aboutPage.dart';
import 'package:my_portfolio/pages/Home/DesktopAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileDrawer.dart';
import 'package:my_portfolio/pages/Projects/projectsPage.dart';
import '../Contact/contactPage.dart';
import '../Skills/skillsPage.dart';
import 'about_me_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: screenWidth > 800
            ? DesktopAppBar(
          onNavItemTapped: (int navIndex) {
            scrollTo(navIndex);
          },
        )
            : MobileAppBar(
          onMenuTap: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
        ),
      ),
      endDrawer: MobileDrawer(
        onNavItemTapped: (int navIndex) {
          scaffoldKey.currentState?.closeEndDrawer();
          scrollTo(navIndex);
        },
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
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                const SizedBox(width: 40),
                // Responsive layout
                screenWidth > 800
                    ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(child: AboutMeContent()),
                    const SizedBox(width: 40),
                    _buildProfilePicture(400),
                  ],
                )
                    : Column(
                  children: [
                    _buildProfilePicture(300),
                    const SizedBox(height: 30),
                    const AboutMeContent(),
                  ],
                ),

                const SizedBox(height: 100),
                AboutPage(key: navbarKeys[1]),

                const SizedBox(height: 100),
                SkillsPage(key: navbarKeys[2]),

                const SizedBox(height: 100),
                ProjectsPage(key: navbarKeys[3]),

                const SizedBox(height: 100),
                ContactPage(key: navbarKeys[4]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Helper widget for profile picture with shadow
  Widget _buildProfilePicture(double size) {
    return Container(
      width: size,
      height: size,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/ME.PNG'),
        backgroundColor: Color(0xff690B22),
      ),
    );
  }

  void scrollTo(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
