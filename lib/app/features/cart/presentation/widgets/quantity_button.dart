import 'package:flutter/material.dart';
import 'package:untitled/core/presentation/theme/colors.dart';



class QuantityButton extends StatelessWidget {
  const QuantityButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
