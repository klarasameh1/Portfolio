import 'package:flutter/material.dart';
import '../homePage.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key, this.onMenuTap});
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed:
                  () => Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (_) => HomePage())),
              child: Image.asset('assets/images/Klogo.png'),
            ),
            IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
          ],
        ),
      ),
    );
  }
}
