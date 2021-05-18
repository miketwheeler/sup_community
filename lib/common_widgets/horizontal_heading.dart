import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalHeading extends StatelessWidget {
  const HorizontalHeading({
    required this.label,
    required this.height,
    required this.color,
  });

  final String label;
  final double height;
  final Color color;

  // Creates a separator bar with designated color, height, and text
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, 
            ),
        ),
      ),
      height: height,
      color: color,
    );
  }
}
