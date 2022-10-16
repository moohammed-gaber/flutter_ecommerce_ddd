import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomImage extends StatelessWidget {
  const CustomImage({Key? key, this.height, this.width}) : super(key: key);
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // random color

      decoration: BoxDecoration(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
