import 'package:flutter/material.dart';
import 'package:leafy/widgets/appBar/menu_app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // AppBar - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const MenuAppBar(),
          // Body - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Container(
            height: 540,
            decoration: const BoxDecoration(
              color: Color.fromARGB(10, 53, 135, 114),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
