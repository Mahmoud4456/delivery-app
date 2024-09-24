import 'package:flutter/material.dart';
import 'package:ui/features/product_feature/view/widget/custom_navigation_bar.dart';
import 'package:ui/features/product_feature/view/widget/details_view_body.dart';


class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsViewBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
