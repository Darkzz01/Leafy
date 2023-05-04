import 'package:flutter/material.dart';

Container tag(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withOpacity(0.07),
      ),
    ),
    child: Text(
      title,
      style: const TextStyle(
        fontFamily: 'Ysabeau',
        color: Colors.black54,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
