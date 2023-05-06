import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'app_bar_action.dart';
import 'app_bar_option.dart';

class MenuAppBar extends StatefulWidget {
  const MenuAppBar({
    super.key,
  });

  @override
  State<MenuAppBar> createState() => _MenuAppBarState();
}

class _MenuAppBarState extends State<MenuAppBar> {
  Color backgroundColor = Colors.black.withOpacity(0.03);
  Color iconColor = Colors.black54;

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
                children: const [
                  MenuAppBarOption(
                    title: 'Home',
                  ),
                  MenuAppBarOption(
                    title: 'About Us',
                  ),
                  MenuAppBarOption(
                    title: 'Shop',
                  ),
                  MenuAppBarOption(
                    title: 'Blog',
                  ),
                  MenuAppBarOption(
                    title: 'Contact',
                  ),
                  MenuAppBarOption(
                    title: 'Order Track',
                  ),
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
                PopupMenuButton(
                  elevation: 0,
                  offset: const Offset(0, 50),
                  child: MouseRegion(
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
                      child: Icon(
                        Icons.person_outline_rounded,
                        size: 25,
                        color: iconColor,
                      ),
                    ),
                  ),
                  onSelected: (value) {
                    if (value == 'sign in') {
                      Navigator.pushNamed(context, '/signIn');
                    } else {
                      Navigator.pushNamed(context, '/signUp');
                    }
                  },
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: 'sign in',
                        child: Text('Sign In'),
                      ),
                      const PopupMenuItem(
                        value: 'sign up',
                        child: Text('Sign Up'),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
