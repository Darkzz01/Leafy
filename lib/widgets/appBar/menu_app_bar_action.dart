import 'package:flutter/material.dart';

class MenuAppBarAction extends StatefulWidget {
  MenuAppBarAction({super.key, required this.quarter, required this.icon});
  int quarter;
  IconData icon;

  @override
  State<MenuAppBarAction> createState() => _MenuAppBarActionState();
}

class _MenuAppBarActionState extends State<MenuAppBarAction> {
  Color backgroundColor = Colors.black.withOpacity(0.03);
  Color iconColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        backgroundColor = const Color.fromARGB(255, 53, 135, 56);
        iconColor = Colors.white;
        setState(() {});
      },
      onExit: (event) {
        backgroundColor = Colors.black.withOpacity(0.03);
        iconColor = Colors.black54;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: RotatedBox(
          quarterTurns: widget.quarter,
          child: Icon(
            widget.icon,
            size: 25,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
