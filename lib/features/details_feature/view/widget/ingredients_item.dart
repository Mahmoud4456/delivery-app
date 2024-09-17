import 'package:flutter/material.dart';

class IngredientsItem extends StatelessWidget {
  const IngredientsItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.zero,
            child: Image.asset(
                width: size.width * .27,
                height: size.height *.13 ,
                fit: BoxFit.cover,
                "assets/images/imagerr.jpg"
            ),
          ),
        ),
        const SizedBox(height: 8,),
        const Text("South East" , style: TextStyle( color: Color(0xff9A9A9A), fontFamily: "Poppins" , fontSize: 10 , fontWeight: FontWeight.w300), ),

      ],
    );
  }
}
