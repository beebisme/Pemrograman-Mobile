import 'package:flutter/material.dart';

class NotificationAction extends StatelessWidget {
  const NotificationAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, // Make the container circular
            image: DecorationImage(
                image: AssetImage(
                    "assets/icons/notification.png")) // Optional: Set the background color
            ),
      ),
    );
  }
}
