import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });
  final int selectedIndex;
  final Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return GNav(
      gap: 8,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      backgroundColor: Colors.white,
      color: Colors.black54,
      activeColor: Colors.blue,
      tabBackgroundColor: Colors.blue.withOpacity(0.1),
      tabs: const [
        GButton(icon: FontAwesomeIcons.carrot, text: 'Vegetables'),
        GButton(icon: FontAwesomeIcons.lemon, text: 'Fruits'),
        GButton(icon: FontAwesomeIcons.cartShopping, text: 'Cart'),
      ],
      selectedIndex: selectedIndex,
      onTabChange: onTabChange,
    );
  }
}
