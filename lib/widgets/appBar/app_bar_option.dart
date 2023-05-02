import 'package:flutter/material.dart';

TextButton menuAppBarOption(String title) {
  return TextButton(
    style: TextButton.styleFrom(
      foregroundColor: const Color.fromARGB(255, 44, 136, 47),
    ),
    onPressed: () {},
    child: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black.withOpacity(.85),
      ),
    ),
  );
}
