import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black.withOpacity(0.15),
        ),
      ),
    );
  }
}
