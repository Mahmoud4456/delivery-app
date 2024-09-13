import 'package:flutter/material.dart';

class ProductPopularItem extends StatelessWidget {
  const ProductPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_rounded),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35, // Adjust width as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.56),
                      blurRadius: 20,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/pngocean.com (15).png",
                  width: MediaQuery.of(context).size.width * 0.27, // Adjust width as needed
                ),
              ),
            ),
            // Space between image and text
            const SizedBox(height: 12),
            // Text details
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 21, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pizza Classic",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Poppins regular",
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Pizza Classic",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Poppins regular",
                      fontWeight: FontWeight.w300,
                      fontSize: 7,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$12.58",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Poppins regular",
                          fontSize: 14,
                        ),
                      ),
                      Icon(Icons.fork_right_rounded),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// class ProductPopularItem extends StatelessWidget {
//   const ProductPopularItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width * 0.5, // Adjust width as needed
//       child: Card(
//         elevation: 5,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.favorite_outline_rounded),
//               ),
//             ),
//             Center(
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.35, // Adjust width as needed
//                 padding: const EdgeInsets.all(4), // Optional: adjust padding for tighter fit
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blue.withOpacity(0.56),
//                       blurRadius: 10, // Reduced blur radius
//                       spreadRadius: 0,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ClipOval(
//                   child: Image.asset(
//                     "assets/images/pngocean.com (15).png",
//                     width: MediaQuery.of(context).size.width * 0.27, // Adjust width as needed
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 12),
//             // Text details
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Pizza Classic",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontFamily: "Poppins regular",
//                       fontSize: 12,
//                     ),
//                   ),
//                   Text(
//                     "Pizza Classic",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontFamily: "Poppins regular",
//                       fontWeight: FontWeight.w300,
//                       fontSize: 7,
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Text(
//                           r"$12.58",
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                             fontFamily: "Poppins regular",
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 8), // Space between text and icon
//                       const Icon(Icons.fork_right_rounded),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
