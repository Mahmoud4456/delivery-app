import 'package:flutter/cupertino.dart';

import 'ingredients_item.dart';

class IngredientsListView extends StatelessWidget {
  const IngredientsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5),
            child:  IngredientsItem(),
          ) ;
        }
    );
  }
}
