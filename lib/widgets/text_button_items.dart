import 'package:flutter/material.dart';

TextButtonItems(String name) {
  return TextButton(
    onPressed: () {},
    child: Text(
      name,
      style: const TextStyle(
          fontSize: 17,
          fontFamily: 'ysabeau',
          fontWeight: FontWeight.w500,
          color: Colors.black87),
    ),
  );
}
