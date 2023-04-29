import 'package:flutter/material.dart';

Container listViewItem(String url, String title, String text) {
  return Container(
    width: 280,
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0.4),
      border: Border.all(
        color: const Color.fromARGB(20, 0, 0, 0),
      ),
    ),
    child: Column(
      children: [
        Image.asset(url),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Ysabeau',
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ysabeau',
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
