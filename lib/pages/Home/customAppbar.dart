import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/bordered_flat_button.dart';

class CustomAppbar extends StatelessWidget {

  Widget _appBarButton(String label , VoidCallback onTap){
    return TextButton(
        onPressed: onTap,
        child:Text(
            label,
          style: TextStyle(
            color: Colors.white,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/Klogo.png'),
            Row(
              children: [
                _appBarButton('About me', (){}),
                _appBarButton('Skills', (){}),
                _appBarButton('Projects', (){}),
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
