import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:leafy/widgets/body/option_button_item.dart';
import 'package:leafy/widgets/footer/footer.dart';

import 'widgets/body.dart';
import 'widgets/side_bar.dart';

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
            children: const [
              SideBar(),
              Body(),
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
