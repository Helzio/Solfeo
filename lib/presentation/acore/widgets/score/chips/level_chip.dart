import 'package:flutter/material.dart';

class LevelChip extends StatelessWidget {
  final String text;
  final bool enabled;
  final bool isNew;
  const LevelChip({
    Key? key,
    required this.text,
    required this.enabled,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, top: 4),
      child: Container(
        decoration: BoxDecoration(
          color: enabled ? Colors.grey.shade400 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
          border: isNew
              ? Border.all(color: Colors.green)
              : Border.all(color: Colors.transparent),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            width: 16,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
                color: enabled ? Colors.black : Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
