import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/About/aboutPage.dart';
import 'package:my_portfolio/pages/Home/DesktopAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileAppbar.dart';
import 'package:my_portfolio/pages/Home/mobile/mobileDrawer.dart';
import '../Skills/skillsPage.dart';
import 'about_me_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scaffoldKey = GlobalKey<ScaffoldState>() ;
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index)=> GlobalKey() );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: screenWidth > 800
            ? DesktopAppBar(onNavItemTapped: (int navIndex){scrollTo(navIndex);},)
            : MobileAppBar(
              onMenuTap: (){
                scaffoldKey.currentState?.openEndDrawer();
              },
            )
      ),
      endDrawer: MobileDrawer(onNavItemTapped: (int navIndex){
        scaffoldKey.currentState?.openEndDrawer();
        scrollTo(navIndex);},
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
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first,),
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
                AboutPage(key: navbarKeys[1],),

                const SizedBox(height: 80),
                SkillsPage(key: navbarKeys[2],),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void scrollTo(int navIndex){
    final key = navbarKeys[navIndex] ;
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut
    );
  }
}
