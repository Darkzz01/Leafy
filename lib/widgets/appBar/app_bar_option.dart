import 'package:flutter/material.dart';

class MenuAppBarOption extends StatefulWidget {
  MenuAppBarOption({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  State<MenuAppBarOption> createState() => _MenuAppBarOptionState();
}

class _MenuAppBarOptionState extends State<MenuAppBarOption> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 44, 136, 47),
      ),
      onPressed: () {
        if (widget.title == 'Shop') {
          Navigator.pushNamed(context, '/shop');
        }
      },
      child: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(.85),
        ),
      ),
    );
  }
}
