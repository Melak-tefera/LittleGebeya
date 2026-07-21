import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mybuttons extends StatelessWidget {
  void Function(int)? onTabChange;

Mybuttons({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        onTabChange: (value) => onTabChange?.call(value),
        hoverColor: const Color.fromARGB(49, 158, 158, 158),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: const Color.fromARGB(222, 158, 158, 158),
        tabs: const [

          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Carts'),
        ],
      ),
    );

     
   

  }
}