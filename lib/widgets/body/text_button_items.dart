import 'package:flutter/material.dart';

textButtonItems(String name) {
  return TextButton(
    onPressed: () {},
    child: Text(
      name,
      style: const TextStyle(
        fontSize: 17,
        fontFamily: 'Ysabeau',
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    ),
  );
}
