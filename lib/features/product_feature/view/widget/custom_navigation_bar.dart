import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:18 ,horizontal: 23),
      child: Row(
        children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [Color(0xff4A1192) , Color(0xff2CD5C4)] ),
          ),

          child: const Text("Order That" , style: TextStyle( fontSize: 18 , fontFamily: "Poppins regular" , color: Colors.white),),
        ),
         const SizedBox(
            width: 32,
          ),
         const Text(
            r"$12.56",
            style: TextStyle(
              fontFamily: "Poppins",
              color: primaryColor,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
