import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.icon, required this.onPressed});

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 52, // Set the width of the container
        height: 52, // Set the height of the container
        decoration: BoxDecoration(
          color: Colors.grey.shade100, // Set the background color of the container
          borderRadius: BorderRadius.circular(12), // Set the border radius of the container
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
