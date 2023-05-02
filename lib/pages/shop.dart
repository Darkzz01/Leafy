import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const MenuAppBar(),
          const SizedBox(height: 40),
          Container(
            height: 125,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 229, 239, 248),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Shop',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      '|',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 15),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Shop',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 300,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(0, 30, 47, 49),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 200,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontFamily: 'Ysabeau',
                        ),
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: greenColor,
                        shape: const BeveledRectangleBorder(),
                        fixedSize: const Size(50, 50),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.search_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
