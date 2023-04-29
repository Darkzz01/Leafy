import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/dictionary.dart';

OptionButtonItem(IconData icon, String title, String text) {
  return Container(
    height: 140,
    width: 420,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      border: Border.fromBorderSide(
        BorderSide(
          color: Color.fromARGB(25, 0, 0, 0),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 40,
          color: greenColor,
        ),
        const SizedBox(width: 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Ysabeau',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Ysabeau',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
