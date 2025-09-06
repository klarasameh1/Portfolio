import 'package:flutter/material.dart';

class BorderedFlatButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double width ;
  final double height ;

  const BorderedFlatButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.width,
    required this.height,
});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ,
      width: width,
      child: ElevatedButton(
          onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
          child: Text(
              title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
      ),
    );
  }
}



