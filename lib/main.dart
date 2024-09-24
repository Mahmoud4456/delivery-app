import 'package:flutter/material.dart';
import 'constants.dart';
import 'features/product_feature/view/car_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: primary ),
      debugShowCheckedModeBanner: false,
      home: const CarView(),
    );
  }
}
