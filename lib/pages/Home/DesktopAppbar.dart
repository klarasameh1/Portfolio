import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/Home/appBarbutton.dart';
import 'package:my_portfolio/pages/Home/homePage.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';

class CustomAppbar extends StatelessWidget {


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
                AppBarButton(label: "About", onTap: (){}),
                AppBarButton(label: "Skills", onTap: (){}),
                AppBarButton(label: "Projects", onTap: (){}),
                BorderedFlatButton(title: "Contact Me", onTap: (){}, width: 140, height: 40),
                SizedBox(width: 5,)
              ],
            )
          ],

        ),
      ),
    );
  }
}
