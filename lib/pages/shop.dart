import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:leafy/widgets/body/option_button_item.dart';
import 'package:leafy/widgets/footer/footer.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  double dropdownHeight = 45;
  bool showContent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // AppBar - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const MenuAppBar(),
          // Shop Container - - - - - - - - - - - - - - - - - - - - - - - - //
          Container(
            height: 140,
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
          const SizedBox(height: 50),
          // Body - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 2000,
                  child: Column(
                    children: [
                      // Search - - - - - - - - - - - - - - - - - - - - //
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
                                const SizedBox(
                                  height: 70,
                                  width: 200,
                                  child: TextField(
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
                      // Dropdown - - - - - - - - - - - - - - - - - - - //
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: dropdownHeight,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            // Head - - - - - - - - - - - - - - - - - - - - //
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  if (dropdownHeight == 45) {
                                    dropdownHeight = 400;
                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      showContent = true;
                                      setState(() {});
                                    });
                                  } else {
                                    dropdownHeight = 45;
                                    Future.delayed(
                                        const Duration(milliseconds: 100), () {
                                      showContent = false;
                                      setState(() {});
                                    });
                                  }

                                  setState(() {});
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Category',
                                        style: TextStyle(
                                          fontFamily: 'Ysabeau',
                                          fontSize: 20,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Colors.black45,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black.withOpacity(0.09),
                            ),
                            // Body - - - - - - - - - - - - - - - - - - - - //
                            AnimatedSwitcher(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              child: !showContent
                                  ? const SizedBox()
                                  : const Text(
                                      'Terraria',
                                      style: TextStyle(fontSize: 100),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 2000,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          // Options - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                optionButtonItem(
                  FontAwesomeIcons.truck,
                  'Free Shipping',
                  'Order Over \$90',
                ),
                optionButtonItem(
                  Icons.replay_sharp,
                  'Easy Return',
                  'Withing 15 Days',
                ),
                optionButtonItem(
                  Icons.lock_outline_rounded,
                  'Secure Payment',
                  'Online Shopping',
                ),
                optionButtonItem(
                  Icons.card_giftcard_rounded,
                  'Best Offer',
                  'Guaranteed',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Divider(
            color: Colors.black.withOpacity(0.08),
          ),
          // Footer - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const Footer(),
        ],
      ),
    );
  }
}
