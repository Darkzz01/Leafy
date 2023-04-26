import 'package:flutter/material.dart';

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
                        SizedBox(width: 40),
                        Icon(
                          Icons.local_florist_rounded,
                          size: 60,
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
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Home',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'About Us',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Shop',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Blog',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Contact',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Order Track',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Actions - - - - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Placeholder(),
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
