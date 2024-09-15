import 'package:flutter/material.dart';
import 'package:ui/features/details_feature/view/details_view.dart';

import 'constants.dart';
import 'features/home_feature/view/home_view.dart';

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
      home: const DetailsView(),
    );
  }
}
