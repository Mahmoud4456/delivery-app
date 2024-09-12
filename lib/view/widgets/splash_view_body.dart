
import 'package:flutter/material.dart';
import 'package:ui/view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>  with SingleTickerProviderStateMixin{

  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController!,
        curve: Curves.easeInOut,
      ),
    );

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });

  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Restaurant-Logo-PNG-File.png" , width: 200,),
          const SizedBox(height: 20.0),
       FadeTransition(
         opacity: _animation!,
         child: const Text ("Food US", style: TextStyle(
           fontFamily: "Poppins bold",
           fontSize: 30,
           color: Color(0x80BFF1FF),
         ),
         ),
       ),
        ]
      ),
    ) ;
  }
}





