import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class ButtonCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final EdgeInsets padding;
  final bool leftAlign;
  final VoidCallback? onTap;

  const ButtonCard({
    super.key,
    required this.icon,
    required this.title,
    this.padding = EdgeInsets.zero,
    this.leftAlign = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    double rowPadding = 12;

    return Container(
        margin: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * .02),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue.withOpacity(.1),
        ),
        child: Center(
          child: InkWell(
            onTap: onTap,
            child: leftAlign
                ? Row(
                    children: [
                      //lottie
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: icon,
                      ).marginOnly(right: rowPadding),
                      Text(
                        title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 12, vertical: 8)
                : Row(
                    children: [
                      //title
                      Text(
                        title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1),
                      ),
                      //lottie
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: icon,
                      ).marginOnly(left: rowPadding),
                    ],
                  ).paddingAll(12),
          ),
        )).animate().fade(duration: const Duration(seconds: 1), curve: Curves.easeIn);
  }
}
