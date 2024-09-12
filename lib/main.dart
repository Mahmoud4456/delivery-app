import 'package:flutter/material.dart';
import 'package:ui/view/home_view.dart';
import 'package:ui/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData(scaffoldBackgroundColor: Image.asset("assets/images/image10.png").color ),
      debugShowCheckedModeBanner: false,
      home:  HomeView(),
    );
  }
}
