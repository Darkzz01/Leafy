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
          Container(
            height: 100,
            child: Row(
              children: [
                // Logo and Title - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  child: Container(
                    child: Row(
                      children: const [
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
                  child: Container(
                    child: Placeholder(),
                  ),
                ),
                // Actions - - - - - - - - - - - - - - - - - - - - - - - - //
                Expanded(
                  child: Container(
                    child: Placeholder(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
