import 'package:flutter/material.dart';

Container listViewItem(String url, String title, String text) {
  return Container(
    width: 280,
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0.4),
      boxShadow: const [
        BoxShadow(
            blurStyle: BlurStyle.solid,
            blurRadius: BorderSide.strokeAlignOutside,
            color: Color.fromARGB(28, 0, 0, 0),
            offset: Offset.zero),
      ],
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    child: Column(
      children: [
        Image.asset(url),
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'ysabeau',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'ysabeau',
              color: Colors.black54),
        ),
      ],
    ),
  );
}
