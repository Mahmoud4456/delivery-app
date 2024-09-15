import 'package:flutter/material.dart';
import 'package:ui/constants.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.6,
      child: Stack(
            children: [
              ClipPath(
                clipper: CustomClipImage() ,
                child: Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height*.6,
                  width: double.infinity,
                  padding: EdgeInsets.zero,
                  foregroundDecoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/pablo-merchan-montes-dc_JMu8lb5U-unsplash.png' ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            Positioned(
              top: 320,
              left: MediaQuery.of(context).size.width - 100,
              child: Container(
                padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF1395E),
                  ),
                  child: const Icon(Icons.favorite_outline_rounded , color: Colors.white,)),
            ),
             const Positioned(
                top: 400,
                left: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description",
                      style: TextStyle(color: primaryColor , fontFamily: "Poppins" , fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}


 class CustomClipImage extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double h = size.height *.852 ;
    double w = size.width ;

    final path = Path();

    path.lineTo(0, h );

    final firstCurve = Offset(30 , h -30) ;
    final lastCurve = Offset( 70, h-30) ;

    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);


    final secondFirstCurve = Offset(w - 50 , h -30) ;
    final secondLastCurve = Offset( w, h-60) ;

    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    path.lineTo(w , 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
        return true ;
  }

 }