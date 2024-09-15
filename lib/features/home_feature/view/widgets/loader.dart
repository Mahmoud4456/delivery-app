import 'package:flutter/material.dart';
import 'dart:math' show pi, sin;

class EnhancedCircularLoader extends StatefulWidget {
  final Color color;
  final double size;
  final double strokeWidth;
  final Widget? centerWidget;
  final String? image ;

  const EnhancedCircularLoader( {
    Key? key,
    this.color = Colors.blue,
    this.size = 100.0,
    this.strokeWidth = 5.0,
    this.centerWidget,  this.image,
  }) : super(key: key);

  @override
  _EnhancedCircularLoaderState createState() => _EnhancedCircularLoaderState();
}

class _EnhancedCircularLoaderState extends State<EnhancedCircularLoader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (_, child) {
              return CustomPaint(
                size: Size(widget.size, widget.size),
                painter: _LoaderPainter(
                  animation: _controller,
                  color: widget.color,
                  strokeWidth: widget.strokeWidth,
                ),
              );
            },
          ),
           Image.asset(widget.image ?? "" , width:150)

    ],
      ),
    );
  }
}

class _LoaderPainter extends CustomPainter {
  final Animation<double> animation;
  final Color color;
  final double strokeWidth;

  _LoaderPainter({
    required this.animation,
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    const startAngle = -pi / 2;
    final sweepAngle = 2 * pi * (0.5 + 0.5 * sin(animation.value * 2 * pi));

    // Draw background circle
    canvas.drawCircle(center, radius, paint..color = color.withOpacity(0.2));

    // Draw animated arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + 2 * pi * animation.value,
      sweepAngle,
      false,
      paint..color = color,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// Usage example:
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enhanced Circular Loader')),
      body: const Center(
        child: EnhancedCircularLoader(
          color: Colors.purple,
          size: 150.0,
          strokeWidth: 8.0,
          centerWidget: Text(
            'Loading',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}