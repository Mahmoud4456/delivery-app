import 'package:flutter/material.dart';

class CodeLap extends StatelessWidget {
  const CodeLap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/imagerr.jpg"),
            const Text("bassem allah"),
          ],
        ),
      ),
    );
  }
}
