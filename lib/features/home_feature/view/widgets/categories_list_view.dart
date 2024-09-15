import 'package:flutter/material.dart';

import 'categories_list_item.dart';


class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: ( context,  index) {
        return const CategoriesListItem()  ;
      },
    );
  }
}
