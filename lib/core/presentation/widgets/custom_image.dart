import 'dart:math';

import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  const CustomImage({Key? key, this.height, this.width}) : super(key: key);
  final double? height, width;

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
 late final Color randomColor;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.5);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,


      decoration: BoxDecoration(
        color: randomColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

