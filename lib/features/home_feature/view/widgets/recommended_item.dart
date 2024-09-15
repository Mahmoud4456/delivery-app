import 'package:flutter/material.dart';

import '../../../../constants.dart';


class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .67,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            color: Colors.white,
            child:Padding(
              padding: const EdgeInsets.only(left: 8.0 , right: 18 , top: 16 , bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Natural" , style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffC0C2C5),
                      ),
                      ),
                      SizedBox(width: 45,),
                      Icon(Icons.favorite, color: Colors.red,),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  const Text("Malteadas tropicales" , style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Poppins Regular",
                    color: primaryColor,
                  ),
                  ),
                  const Text("Elaborado con jugos naturales" ,
                    style: TextStyle(
                      fontSize: 6.6,
                      fontFamily: "Poppins",
                      color: Color(0xff515F65),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(r"$ 12.85",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(width: 40,),
                      Container(
                        margin: const EdgeInsets.only(top:6),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurStyle: BlurStyle.outer,
                                blurRadius: .5,
                              ),
                            ],
                            shape: BoxShape.circle
                        ),
                        child: const Icon(Icons.arrow_forward_ios , size: 12, color: primaryColor,),
                      ),
                    ],
                  ),
                ],
              ),
            ) ,
          ),
          const SizedBox(width: 20,),
          Positioned(
            top: 30,
            child: Image.asset("assets/images/pngocean.com (18).png" , ),
          ),
        ],
      ),
    );
  }
}
