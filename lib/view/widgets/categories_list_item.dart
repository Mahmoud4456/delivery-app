import 'package:flutter/material.dart';

import '../../constants.dart';

class CategoriesListItem  extends StatelessWidget{
  const CategoriesListItem({super.key});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(left: 19),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green.withOpacity(.47),
            ),
            child: Image.asset("assets/images/tacos.png" , width:MediaQuery.of(context).size.width *.20),
          ),
          const SizedBox(height: 5,),
          const Text("Tacos" , style: TextStyle(
            color: primaryColor,
            fontSize: 12,
            fontFamily: "Poppins regular",
          ),
          ),
        ],
      ),
    );
  }

}