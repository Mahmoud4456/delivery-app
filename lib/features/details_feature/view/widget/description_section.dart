import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'ingredients_list_view.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Description",
            style: TextStyle(color: primaryColor , fontFamily: "Poppins" , fontSize: 18),
          ),
          const SizedBox(height: 11,),
          const SizedBox(
            width: 230,
            child: Text("This is a description of this meet and This is a description of this meet andThis is a description of this meet and ",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: primaryColor , fontFamily: "Poppins" , fontSize: 10 , fontWeight: FontWeight.w300),
            ),
          ),
          const SizedBox(height: 11,),
          const Text("Ingredients",
            style: TextStyle(color: primaryColor , fontFamily: "Poppins" , fontSize: 18),
          ),
          const SizedBox(height: 11,),
          SizedBox(
              height: size.height *.2,
              child: const IngredientsListView()),

        ],
      ),
    );
  }
}
