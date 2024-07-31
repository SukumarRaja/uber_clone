import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.backgroundColor,
      required this.height,
      required this.width,
      this.borderRadius});

  final VoidCallback onPressed;
  final Widget child;
  final Color backgroundColor;
  final double height;
  final double width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
        ),
      ),
      child: child,
    );
  }
}
