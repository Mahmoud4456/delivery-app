import 'package:flutter/material.dart';

import 'constants.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText({
    required this.text ,
    super.key, required this.top,
  });
  final String text  ;
  final double top;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: top ,left: 22),
      child: Text( text , style: const TextStyle(
        color: primaryColor ,
        fontSize: 16,
        fontFamily: "Poppins",
      ),
      ),
    );
  }
}
