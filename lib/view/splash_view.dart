import 'package:flutter/material.dart';
import 'package:ui/view/home_view.dart';
import 'package:ui/view/widgets/splash_view_body.dart';

import '../constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: HomeView(),
    );
  }
}
