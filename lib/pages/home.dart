import 'package:flutter/material.dart';
import 'package:leafy/widgets/appBar/menu_app_bar.dart';
import 'package:leafy/widgets/appBar/menu_app_bar_action.dart';
import 'package:leafy/widgets/appBar/menu_app_bar_option.dart';

import '../widgets/menu_body_product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of()
    return Scaffold(
      body: ListView(
        children: [
          // AppBar - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const MenuAppBar(),
          // Body - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Container(
            height: 540,
            decoration: const BoxDecoration(
              color: Color.fromARGB(14, 53, 135, 114),
            ),
            child: PageView(
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Decorate your home',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/plant_menu.png',
                      color: const Color.fromARGB(255, 42, 109, 44),
                    ),
                  ],
                ),
                const Placeholder(),
                const Placeholder(),
                const Placeholder(),
                // Hola
              ],
            ),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 350,
                  margin: const EdgeInsets.only(left: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(17, 27, 100, 98),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 20),
                      Text(
                        'bold',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      SizedBox(width: 300),
                      Icon(
                        Icons.add_moderator_outlined,
                        size: 200,
                        color: Color.fromARGB(255, 16, 71, 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                child: Container(
                  height: 350,
                  margin: const EdgeInsets.only(right: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(14, 71, 88, 88),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 20),
                      Text(
                        'Plant \n community',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      SizedBox(width: 300),
                      Icon(
                        Icons.flourescent_rounded,
                        size: 200,
                        color: Color.fromARGB(255, 17, 80, 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Products',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          const SizedBox(height: 5),
          const Text(
            'quality plants and the greatest variety of species',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuBodyProduct(),
            ],
          ),
        ],
      ),
    );
  }
}
