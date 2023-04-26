import 'package:flutter/material.dart';

TextButton menuAppBarOption(String title) {
  return TextButton(
    style: TextButton.styleFrom(
      foregroundColor: const Color.fromARGB(255, 44, 136, 47),
    ),
    onPressed: () {},
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
    ),
  );
}
