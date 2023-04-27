import 'package:flutter/material.dart';

class MenuBodyProduct extends StatefulWidget {
  MenuBodyProduct({
    Key? key,
    required this.title,
    required this.icon,
    required this.price,
    required this.oldPrice,
  }) : super(key: key);
  String title;
  IconData icon;
  double price;
  double oldPrice;

  @override
  State<MenuBodyProduct> createState() => _MenuBodyProductState();
}

class _MenuBodyProductState extends State<MenuBodyProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 173, 173, 173),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            margin: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color.fromARGB(19, 33, 149, 243),
            ),
            child: Icon(
              widget.icon,
              size: 125,
              color: const Color.fromARGB(255, 12, 102, 15),
            ),
          ),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$${widget.price}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(width: 5),
              Text(
                '\$${widget.oldPrice}',
                style: const TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.green,
              shape: const BeveledRectangleBorder(),
              side: const BorderSide(
                color: Color.fromARGB(153, 53, 135, 56),
                width: 0.5,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Add to Cart',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
