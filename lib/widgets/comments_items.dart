import 'package:flutter/material.dart';

import '../data/dictionary.dart';

CommentsItems(String name) {
  return Container(
    height: 300,
    width: 450,
    margin: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '66',
          style: TextStyle(
            fontFamily: 'Ysabeau',
            fontSize: 70,
            fontWeight: FontWeight.w500,
            color: greenColor,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Ea tempor non reprehenderit commodo. Et culpa aute est consectetur deserunt do nisi exercitation. Sit incididunt.',
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontFamily: 'Ysabeau',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black54),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(
              fontFamily: 'Ysabeau',
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        ),
        const SizedBox(height: 13),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.star_rate_rounded,
              size: 25,
              color: Color.fromARGB(255, 250, 190, 80),
            ),
            Icon(
              Icons.star_rate_rounded,
              size: 25,
              color: Color.fromARGB(255, 250, 190, 80),
            ),
            Icon(
              Icons.star_rate_rounded,
              size: 25,
              color: Color.fromARGB(255, 250, 190, 80),
            ),
            Icon(
              Icons.star_rate_rounded,
              size: 25,
              color: Color.fromARGB(255, 250, 190, 80),
            ),
            Icon(
              Icons.star_half_rounded,
              size: 25,
              color: Color.fromARGB(255, 250, 190, 80),
            ),
          ],
        ),
      ],
    ),
  );
}
