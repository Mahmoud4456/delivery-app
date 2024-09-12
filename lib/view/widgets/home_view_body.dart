import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import 'categories_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 35 ,left: 21),
          child: Text("Explorer categories" , style: TextStyle(
            color: primaryColor ,
            fontSize: 16,
            fontFamily: "Poppins",
          ),
          ),
        ),
         SizedBox(height: MediaQuery.of(context).size.height *.028,),
        const CategoriesListItem(),
      ],
    );
  }
}



