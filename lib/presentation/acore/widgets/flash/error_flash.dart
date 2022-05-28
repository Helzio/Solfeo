import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

void showErrorFlash(BuildContext context, String message) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return Flash(
        backgroundColor: Colors.red.shade800,
        controller: controller,
        alignment: Alignment.bottomCenter,
        child: FlashBar(
          icon: const Icon(
            Icons.error_outline_rounded,
            color: Colors.white,
          ),
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    },
  );
}

void showSuccessFlash(BuildContext context, String message) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return Flash(
        backgroundColor: Colors.black38,
        controller: controller,
        alignment: Alignment.topCenter,
        child: FlashBar(
          icon: const Icon(
            Icons.check_box_rounded,
            color: Colors.green,
          ),
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      );
    },
  );
}
