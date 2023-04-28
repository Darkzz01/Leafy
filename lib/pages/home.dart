import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafy/widgets/appBar/menu_app_bar.dart';

import '../widgets/menu_body_product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool x = true;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of()
    return Scaffold(
      body: ListView(
        children: [
          // AppBar - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const MenuAppBar(),
          // Body - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          //Page View - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
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
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Decorate your\nhome',
                              style: TextStyle(
                                height: 1.2,
                                fontFamily: 'Ysabeau',
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                              ),
                            ),
                            const Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              maxLines: 2,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                              ),
                            ),
                            Container(),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20,
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 89, 154, 141),
                                foregroundColor: Colors.green,
                                shape: const BeveledRectangleBorder(),
                                side: const BorderSide(
                                  color: Color.fromARGB(0, 53, 135, 56),
                                  width: 0.5,
                                ),
                              ),
                              onPressed: () {
                                x ? x = false : x = true;

                                setState(() {});
                              },
                              child: const Text(
                                'Shop Now',
                                style: TextStyle(
                                  fontFamily: 'Ysabeau',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(50),
                      child: Image.asset(
                        'assets/sofa.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          // Two Containers - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 350,
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  margin: const EdgeInsets.only(left: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(17, 27, 100, 98),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Forniture\nCollection',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      Icon(
                        Icons.house_rounded,
                        size: 150,
                        color: Color.fromARGB(100, 16, 71, 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                child: Container(
                  height: 350,
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  margin: const EdgeInsets.only(right: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(14, 71, 88, 88),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Plant\nCollection',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      Icon(
                        Icons.eco_rounded,
                        size: 150,
                        color: Color.fromARGB(98, 80, 75, 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Title - Division - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const Text(
            'Products',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          // Paragraph - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const Text(
            'quality plants and the greatest variety of species',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
          // Products - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuBodyProduct(
                title: 'Doug Wooden Table',
                icon: Icons.eco_rounded,
                price: 200.00,
                oldPrice: 500.00,
              ),
              MenuBodyProduct(
                title: 'for',
                icon: Icons.ac_unit,
                price: 100.00,
                oldPrice: 300.00,
              ),
              MenuBodyProduct(
                title: 'imagine',
                icon: Icons.add_moderator_rounded,
                price: 350.00,
                oldPrice: 700.00,
              ),
              MenuBodyProduct(
                title: 'Organic',
                icon: Icons.add_to_drive_rounded,
                price: 400.00,
                oldPrice: 850.00,
              ),
            ],
          ),
          // ListView - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Container(
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
