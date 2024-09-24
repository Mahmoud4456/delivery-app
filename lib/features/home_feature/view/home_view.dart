import 'package:flutter/material.dart';
import 'package:ui/features/home_feature/view/widgets/home_view_app_bar.dart';
import 'package:ui/features/home_feature/view/widgets/home_view_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(preferredSize:Size.fromHeight( MediaQuery.of(context).size.height *.1 ),
          child: const HomeViewAppBar()),
      body: const HomeViewBody(),
      bottomNavigationBar:  FluidNavBar(),
    );
  }
}


class FluidNavBar extends StatefulWidget {
  @override
  _FluidNavBarState createState() => _FluidNavBarState();
}

class _FluidNavBarState extends State<FluidNavBar> {
  int _selectedIndex = 0;

  final List<NavItem> _navItems =  [
    NavItem(Icons.shopping_bag, "Shop"),
    NavItem(Icons.money, "Money"),
    NavItem(Icons.currency_bitcoin, "Bitcoin"),
    NavItem(Icons.bar_chart, "Chart"),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home_filled),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow[100],
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _navItems.map((item) {
            var index = _navItems.indexOf(item);
            return IconButton(
              onPressed: () => _onNavItemTapped(index),
              icon: Icon(
                item.icon,
                color: _selectedIndex == index ? Colors.yellow : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class NavItem {
  IconData icon;
  String title;

  NavItem(this.icon, this.title);
}