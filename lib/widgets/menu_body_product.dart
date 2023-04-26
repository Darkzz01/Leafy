import 'package:flutter/material.dart';

class MenuBodyProduct extends StatefulWidget {
  MenuBodyProduct({Key? key}) : super(key: key);

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
            child: const Icon(
              Icons.eco_sharp,
              size: 200,
              color: Color.fromARGB(255, 12, 102, 15),
            ),
          ),
          const Text(
            'ComiSoon',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                ' \$700.00',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                '\$800.00-',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          const SizedBox(height: 8),
          OutlinedButton(
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
