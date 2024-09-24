import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CarViewBody extends StatelessWidget {
  const CarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * .129,
          width: double.infinity,
          child: const Text(
            "Car",
            style: TextStyle(
              color: sdColor,
              fontSize: 22,
              fontFamily: "Poppins",
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  10,),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: sdColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: MediaQuery.of(context).size.width * .37,
                child: const Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.house_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home Made",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          "Direction of employee",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontFamily: "Poppins regular"),
                        ),
                        SizedBox(
                          width:7,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffE2EDF2),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: MediaQuery.of(context).size.width * .37,
                child: const Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.house_outlined,
                      color: sdColor,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home Made",
                          style: TextStyle(
                              color: sdColor,
                              fontSize: 10,
                              fontFamily: "Poppins"),
                        ),
                        Text(
                          "Direction of employee",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8,
                              fontFamily: "Poppins regular"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .065,
                width: MediaQuery.of(context).size.height * .065,
                decoration:
                    const BoxDecoration(color: sdColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  //child: Image.asset(""),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

