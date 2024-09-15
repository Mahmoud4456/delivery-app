import 'package:flutter/material.dart';
import 'package:ui/constants.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {

  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  NavigationBar(
      height: 50,
      elevation: 0,
      indicatorColor: primary,
      selectedIndex: _selectedIndex,
      onDestinationSelected:  _onItemTapped ,
      backgroundColor: primary,
      destinations:const <NavigationDestination>[
        NavigationDestination(
            label: "Home",
            icon: Icon(Icons.home)),
        NavigationDestination(
            label: "Shop",
            icon: Icon(Icons.hot_tub_sharp)),
        NavigationDestination(
            label: "Favorite",
            icon: Icon(Icons.favorite)),
      ],
    );
  }
}
