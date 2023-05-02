import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'app_bar_action.dart';
import 'app_bar_option.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          // Logo and Title - - - - - - - - - - - - - - - - - - - - - //
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  const SizedBox(width: 60),
                  Icon(
                    Icons.local_florist_rounded,
                    size: 60,
                    color: greenColor,
                  ),
                  const SizedBox(width: 10),
                  const Text(
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
            flex: 2,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuAppBarAction(
                  quarter: 1,
                  icon: Icons.search_rounded,
                ),
                const SizedBox(width: 10),
                MenuAppBarAction(
                  quarter: 0,
                  icon: Icons.repeat_rounded,
                ),
                const SizedBox(width: 10),
                MenuAppBarAction(
                  quarter: 0,
                  icon: Icons.favorite_border_rounded,
                ),
                const SizedBox(width: 10),
                MenuAppBarAction(
                  quarter: 0,
                  icon: Icons.shopping_cart_outlined,
                ),
                const SizedBox(width: 10),
                MenuAppBarAction(
                  quarter: 0,
                  icon: Icons.person_outline_outlined,
                ),
                const SizedBox(width: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
