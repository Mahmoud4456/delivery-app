import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      elevation: .8,
      leadingWidth: MediaQuery.of(context).size.width * .47,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xff5117AC),
            size: 20,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(color: borderColor)),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(18),
          ),
          labelText: "search",
          labelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: "Poppins regular",
            color: borderColor,
          ),
        )),
      ),
      centerTitle: true,
      title: const Text(
        "Inicio",
        style: TextStyle(
            fontSize: 22, fontFamily: "Poppins regular", color: sdColor),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: Color(0xff20D0C4),
              size: 22,
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.percent,
            color: const Color(0xffF02756).withOpacity(.63),
            size: 22,
          ),
        ),
      ],
    );
  }
}
