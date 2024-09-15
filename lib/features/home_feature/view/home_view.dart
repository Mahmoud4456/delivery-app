import 'package:flutter/material.dart';
import 'package:ui/features/home_feature/view/widgets/custom_bottom_nav.dart';
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
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}