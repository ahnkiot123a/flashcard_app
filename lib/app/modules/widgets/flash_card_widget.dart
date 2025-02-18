import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashcardWidget extends StatelessWidget {
  final String title;
  final String? subtitle;

  const FlashcardWidget({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Card(
        key: ValueKey(title),
        elevation: 6,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ).marginOnly(bottom: 12),
              Text(
                subtitle ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}