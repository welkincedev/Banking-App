import 'package:flutter/material.dart';

class ChipBox extends StatelessWidget {

  final String title;
  final bool selected;
  final VoidCallback onTap;

  const ChipBox({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: selected
              ? Colors.blue
              : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),

          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),

        child: Text(
          title,

          style: TextStyle(
            color: selected
                ? Colors.white
                : Colors.black,

            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}