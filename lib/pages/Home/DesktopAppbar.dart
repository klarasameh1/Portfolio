import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/Home/appBarbutton.dart';
import 'package:my_portfolio/pages/Home/homePage.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key, required this.onNavItemTapped});
  final Function(int) onNavItemTapped ;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomePage())),
            child: Image.asset('assets/images/Klogo.png')
            ),
            Row(
              children: [
                AppBarButton(label: "Home", onTap: (){onNavItemTapped(0);}),
                AppBarButton(label: "About Me", onTap: (){onNavItemTapped(1);}),
                AppBarButton(label: "Skills", onTap: (){onNavItemTapped(2);}),
                AppBarButton(label: "Projects", onTap: (){onNavItemTapped(3);}),
                BorderedFlatButton(title: "Contact Me", onTap: (){onNavItemTapped(4);}, width: 140, height: 40),
                SizedBox(width: 5,)
              ],
            )
          ],

        ),
      ),
    );
  }
}
