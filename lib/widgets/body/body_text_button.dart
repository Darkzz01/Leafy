import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';

TextButton BodyTextButtons(String name) {
  return TextButton(
    style: TextButton.styleFrom(
      foregroundColor: greenColor,
    ),
    onPressed: () {},
    child: Text(
      name,
      style: const TextStyle(
          fontFamily: 'Ysabeau',
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: Colors.black54),
    ),
  );
}
