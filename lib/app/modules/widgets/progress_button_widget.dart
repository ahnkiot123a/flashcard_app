import 'package:flutter/material.dart';
import 'package:jlpt_exp/config/theme/app_color.dart';

class ProgressButtonWidget extends StatelessWidget {
  const ProgressButtonWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final Widget icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.cyan50, // Light background color
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black54,
          ),
          // trailing: SizedBox(
          //   width: 40,
          //   height: 40,
          //   child: Stack(
          //     fit: StackFit.expand,
          //     children: [
          //       CircularProgressIndicator(
          //         value: 0.74,
          //         backgroundColor: Colors.teal.shade100,
          //         color: Colors.teal,
          //         strokeWidth: 6,
          //       ),
          //       Center(
          //         child: Text(
          //           '${(0.74 * 100).toStringAsFixed(0)}%',
          //           style: const TextStyle(
          //             fontSize: 10,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black87,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
