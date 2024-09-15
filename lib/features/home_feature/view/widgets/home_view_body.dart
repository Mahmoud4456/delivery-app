import 'package:flutter/material.dart';
import 'package:ui/features/home_feature/view/widgets/recommended_item.dart';
import '../../../../components.dart';
import 'categories_list_view.dart';
import 'home_product_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PrimaryText(
            text: "Explorer categories",
            top: 35,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .028,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            child: const CategoriesListView(),
          ),
          const PrimaryText(
            text: "Products populars",
            top: 37,
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .36,
              child: const HomeProductListView()),
         const Padding(
            padding:  EdgeInsets.all(20.0),
            child:  Text(
              "Recommended",
              style: TextStyle(fontSize: 16, fontFamily: "Poppins"),

            ),
          ),
          const SizedBox(
              height: 125,
              child:  RecommendedListView()),
        ],
      ),
    );
  }
}


class RecommendedListView extends StatelessWidget {
  const RecommendedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
      return const RecommendedItem();
    });
  }
}
