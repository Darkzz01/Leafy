import 'package:flutter/material.dart';
import 'package:leafy/widgets/body/body_product.dart';

import 'menu_body_product_full.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showListView = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 2500,
        margin: const EdgeInsets.only(right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Showing 1-12 of 29 results',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 20),
                PopupMenuButton(
                  offset: const Offset(0, 50),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 'option',
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(0, 0, 0, 0),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: const TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '...',
                              hintStyle: TextStyle(
                                fontFamily: 'Ysabeau',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text('Sort By Date'),
                      ),
                      const PopupMenuItem(
                        child: Text('Sort By Name'),
                      ),
                      const PopupMenuItem(
                        child: Text('Sort By Popularity'),
                      ),
                      const PopupMenuItem(
                        child: Text('Lowest to Highest'),
                      ),
                      const PopupMenuItem(
                        child: Text('Highest to Lowest'),
                      ),
                    ];
                  },
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black54),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sort By Date',
                          style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 20,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    showListView = true;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.format_list_bulleted_rounded,
                    color: showListView ? Colors.black87 : Colors.black38,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showListView = false;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.grid_view,
                    color: !showListView ? Colors.black87 : Colors.black38,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Expanded(
              child: showListView
                  ? ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        MenuBodyProductFull(
                          image: 'assets/listview_5.png',
                          title: 'Glass Top Coffee Table',
                          price: 7500,
                          oldPrice: 8000,
                        ),
                        MenuBodyProductFull(
                          image: 'assets/listview_6.png',
                          title: 'Angle Double Bed',
                          price: 7500,
                          oldPrice: 8000,
                        ),
                        MenuBodyProductFull(
                          image: 'assets/listview_4.png',
                          title: 'Odrex Double Bed',
                          price: 7500,
                          oldPrice: 8000,
                        ),
                        MenuBodyProductFull(
                          image: 'assets/listview_6.png',
                          title: 'Phonex Double Bed',
                          price: 7500,
                          oldPrice: 8000,
                        ),
                        MenuBodyProductFull(
                          image: 'assets/listview_8.png',
                          title: 'Obhai almirah',
                          price: 7500,
                          oldPrice: 8000,
                        ),
                      ],
                    )
                  : GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1 / 1.55,
                      children: [
                        for (int i = 0; i < 9; i++)
                          const MenuBodyProduct(
                            title: 'Title',
                            image: 'assets/product_0.png',
                            price: 1000,
                            oldPrice: 2500,
                            banner: true,
                            showButton: false,
                            isExpanded: false,
                          ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
