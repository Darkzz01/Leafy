import 'package:flutter/material.dart';

Container menuAppBarAction(int quarter, IconData icon) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.03),
    ),
    child: RotatedBox(
      quarterTurns: quarter,
      child: Icon(
        icon,
        size: 25,
        color: Colors.black54,
      ),
    ),
  );
}
