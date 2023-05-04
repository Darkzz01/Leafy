import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';

Row rate(int stars) {
  return Row(
    children: [
      Checkbox(
        value: false,
        activeColor: greenColor,
        onChanged: (value) {},
      ),
      for (int i = 0; i < stars; i++)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(
            Icons.star_rate,
            size: 30,
            color: Color.fromARGB(255, 255, 186, 92),
          ),
        ),
      for (int i = 0; i < 5 - stars; i++)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(
            Icons.star_rate_outlined,
            size: 30,
            color: Color.fromARGB(255, 255, 186, 92),
          ),
        ),
    ],
  );
}
