import 'package:flutter/material.dart';

class GradientButtonWidget extends StatelessWidget {
  const GradientButtonWidget({super.key, required this.child, required this.onPressed, required this.gradient});

  final Widget child;
  final Function() onPressed;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      splashColor: Colors.black12,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
