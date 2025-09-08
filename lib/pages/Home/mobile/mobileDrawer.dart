import 'package:flutter/material.dart';

import '../../../widgets/bordered_flat_button.dart';
import '../appBarbutton.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width/2,
      elevation: 1,
      backgroundColor: Colors.black45,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20
            ),
              child: IconButton(
                  onPressed: (){Navigator.of(context).pop();},
                  icon: Icon(Icons.close)
              ),
            ),
          ),
          SizedBox(height: 50,),
          AppBarButton(label: "About", onTap: (){}),
          SizedBox(height: 10,),
          AppBarButton(label: "Skills", onTap: (){}),
          SizedBox(height: 10,),
          AppBarButton(label: "Projects", onTap: (){}),
          SizedBox(height: 10,),
          BorderedFlatButton(title: "Contact Me", onTap: (){}, width: 140, height: 40),
        ],
      ),
    );
  }
}
