import 'package:flutter/material.dart';
import 'package:leafy/widgets/menu_app_bar_option.dart';

import '../widgets/menu_app_bar_action.dart';

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
          Container(
            height: 100,
            child: Row(
              children: [
                // Logo and Title - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      children: const [
                        SizedBox(width: 70),
                        Icon(
                          Icons.local_florist_rounded,
                          size: 60,
                          color: Color.fromARGB(255, 53, 135, 56),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Leafy',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Menu - - - - - - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        menuAppBarOption('Home'),
                        menuAppBarOption('About Us'),
                        menuAppBarOption('Shop'),
                        menuAppBarOption('Blog'),
                        menuAppBarOption('Contact'),
                        menuAppBarOption('Order Track'),
                      ],
                    ),
                  ),
                ),
                // Actions - - - - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        menuAppBarAction(1, Icons.search_rounded),
                        const SizedBox(width: 10),
                        menuAppBarAction(0, Icons.repeat_rounded),
                        const SizedBox(width: 10),
                        menuAppBarAction(0, Icons.favorite_border_rounded),
                        const SizedBox(width: 10),
                        menuAppBarAction(0, Icons.shopping_cart_outlined),
                        const SizedBox(width: 10),
                        menuAppBarAction(0, Icons.person_outline_outlined),
                        const SizedBox(width: 70),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Body - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
