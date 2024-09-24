import 'package:flutter/material.dart';
import 'package:ui/features/product_feature/view/widget/car_view_body.dart';

class CarView extends StatelessWidget {

 const CarView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
backgroundColor: Colors.white.withOpacity(.97),
      body: const CarViewBody(),
    );
  }


}