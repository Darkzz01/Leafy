import 'package:flutter/material.dart';

class DropDownHead extends StatelessWidget {
  const DropDownHead({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Ysabeau',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black45,
              ),
            ],
          ),
          Divider(
            color: Colors.black.withOpacity(0.09),
          ),
        ],
      ),
    );
  }
}
