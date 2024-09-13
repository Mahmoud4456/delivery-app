import 'package:flutter/material.dart';
import '../../components.dart';
import 'categories_list_view.dart';
import 'home_product_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PrimaryText(text: "Explorer categories" , top: 35,),
         SizedBox(height: MediaQuery.of(context).size.height *.028,),
       SizedBox(
         height: MediaQuery.of(context).size.height * .1,
         child: const CategoriesListView(),) ,
       const PrimaryText(text: "Products populars",top: 37,),
       const SizedBox(height: 18,),
        SizedBox(
            height:MediaQuery.of(context).size.height * .36 ,
            child: const HomeProductListView()),

      ],
    );
  }
}













