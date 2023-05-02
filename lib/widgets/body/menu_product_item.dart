import 'package:flutter/material.dart';

import '../../data/dictionary.dart';

class MenuproductItem extends StatefulWidget {
  MenuproductItem({
    Key? key,
    required this.url1,
    required this.title1,
    required this.price1,
    required this.oldprice1,
  }) : super(key: key);
  String url1;
  String title1;
  String price1;
  String oldprice1;

  @override
  State<MenuproductItem> createState() => _MenuproductItemState();
}

class _MenuproductItemState extends State<MenuproductItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 550,
        width: 420,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 0, 0, 0),
        ),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 420,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 222, 222),
              ),
              child: Image.asset(
                widget.url1,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.title1,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'Ysabeau',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.price1,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Ysabeau',
                    color: greenColor,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.oldprice1,
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 20,
                    fontFamily: 'Ysabeau',
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                foregroundColor: greenColor,
                shape: const BeveledRectangleBorder(),
                side: BorderSide(color: greenColor, width: 1),
              ),
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontFamily: 'Ysabeau',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}