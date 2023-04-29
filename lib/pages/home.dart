import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/menu_app_bar.dart';

import '../widgets/body_text_button.dart';
import '../widgets/comments_items.dart';
import '../widgets/list_view_items.dart';
import '../widgets/menu_body_product.dart';
import '../widgets/menu_product_item.dart';
import '../widgets/option_button_item.dart';
import '../widgets/text_button_items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        padding: const EdgeInsets.only(
                            top: 80, bottom: 80, left: 80),
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
                              onPressed: () {},
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
                      padding: const EdgeInsets.all(40),
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
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 241, 250),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Forniture\nCollection',
                              style: TextStyle(
                                fontFamily: 'Ysabeau',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Shop Now',
                                style: TextStyle(
                                  fontFamily: 'Ysabeau',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 89, 154, 141),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('assets/sofa_3.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                child: Container(
                  height: 350,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(right: 90),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250, 246, 242),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Plant\nCollection',
                              style: TextStyle(
                                fontFamily: 'Ysabeau',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Shop Now',
                                style: TextStyle(
                                  fontFamily: 'Ysabeau',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 89, 154, 141),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('assets/plant.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 75),
          // Title - Division - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const Text(
            'Trendy Product',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Ysabeau',
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 25),
          // Paragraph - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Text(
            'Aliquip irure minim amet adipisicing anim nostrud et ipsum quis\nadipisicing cillum aute voluptate culpa.',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 2,
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          // Products - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuBodyProduct(
                  title: 'Small Dinning Table',
                  image: 'assets/product_0.png',
                  price: 200.00,
                  oldPrice: 500.00,
                ),
                MenuBodyProduct(
                  title: 'Doug Wooden Table',
                  image: 'assets/product_1.png',
                  price: 100.00,
                  oldPrice: 300.00,
                ),
                MenuBodyProduct(
                  title: 'Bamboo Forniture',
                  image: 'assets/product_3.png',
                  price: 350.00,
                  oldPrice: 700.00,
                ),
                MenuBodyProduct(
                  title: 'Stylish Hall Room Chair',
                  image: 'assets/product_2.png',
                  price: 400.00,
                  oldPrice: 850.00,
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          // ListView - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Container(
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    listViewItem(
                      'assets/listview_0.png',
                      'Wooden Furnitue',
                      '20 Items',
                    ),
                    listViewItem(
                      'assets/product_3.png',
                      'Bamboo Furniture',
                      '2 Items',
                    ),
                    listViewItem(
                      'assets/listview_1.png',
                      'Metal Furnitutre',
                      '2 Items',
                    ),
                    listViewItem(
                      'assets/listview_2.png',
                      'Plastic Furniture',
                      '1 Items',
                    ),
                    listViewItem(
                      'assets/listview_3.png',
                      'Glass Furniture',
                      '7 Items',
                    ),
                    listViewItem(
                      'assets/listview_4.png',
                      'Concrete Furniture',
                      '0 Items',
                    ),
                    listViewItem(
                      'assets/listview_5.png',
                      'Bombay Furnitute',
                      '0 Items',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const Text(
            'Our Store',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Ysabeau',
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 25),
          // Paragraph - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
          Text(
            'Aliquip irure minim amet adipisicing anim nostrud et ipsum quis\nadipisicing cillum aute voluptate culpa.',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 2,
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButtonItems('All'),
              TextButtonItems('Wooden furnitue'),
              TextButtonItems('Bamboo furniture'),
              TextButtonItems('Wikker or ratten furniture'),
              TextButtonItems('Metal furnitutre'),
              TextButtonItems('Plastic furniture'),
            ],
          ),
          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuproductItem(
                url1: 'assets/listview_4.png',
                title1: 'Odrex Double Bed',
                price1: '7,500.0',
                oldprice1: '8,000.0',
              ),
              MenuproductItem(
                  url1: 'assets/listview_6.png',
                  title1: 'Angle Double Bed',
                  price1: '7,500.0',
                  oldprice1: '8,000.0'),
              MenuproductItem(
                  url1: 'assets/listview_7.png',
                  title1: 'Phonex Double Bed',
                  price1: '7,500.0',
                  oldprice1: '8,000.0'),
              MenuproductItem(
                  url1: 'assets/listview_2.png',
                  title1: 'Care Wood Stool',
                  price1: '7,500.0',
                  oldprice1: '8,000.0'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuproductItem(
                  url1: 'assets/listview_8.png',
                  title1: 'Obhai Almirah',
                  price1: '700.0',
                  oldprice1: '800.0'),
              MenuproductItem(
                  url1: 'assets/listview_9.png',
                  title1: 'Bamboo Table',
                  price1: '750.0',
                  oldprice1: '800.0'),
              MenuproductItem(
                  url1: 'assets/listview_10.png',
                  title1: 'Red Wood Almirah',
                  price1: '7,500.0',
                  oldprice1: '8,000.0'),
              MenuproductItem(
                  url1: 'assets/listview_11.png',
                  title1: 'Raymond Wood Bed',
                  price1: '7,500.0',
                  oldprice1: '8,000.0'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(left: 150),
                  height: 460,
                  width: 125,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 244, 248, 251),
                  ),
                  child: Image.asset('assets/sofa_2.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(right: 150),
                  height: 460,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 244, 248, 251),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'New Arribal 2022',
                        style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 70,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      const Text(
                        'Non commodo sint culpa cillum elit nulla magna dolore ad. Veniam pariatur laboris ad dolore commodo sint eiusmod cillum ipsum. Sint ad ad reprehenderit sit dolore amet ut ad id Lorem pariatur occaecat labore.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(150, 50),
                          backgroundColor: greenColor,
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyTextButtons('boogie'),
              const SizedBox(width: 20),
              BodyTextButtons('Quicker'),
              const SizedBox(width: 20),
              BodyTextButtons('Vagoda'),
              const SizedBox(width: 20),
              BodyTextButtons('Mark'),
              const SizedBox(width: 20),
              BodyTextButtons('Ogivo'),
              const SizedBox(height: 200),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            width: 400,
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CommentsItems('Jolene Mercer'),
                CommentsItems('Wyatt Myers'),
                CommentsItems('John Abraham'),
                CommentsItems('Ethan Herrera'),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OptionButtonItem(
                FontAwesomeIcons.truck,
                'Free Shipping',
                'Order Over \$90',
              ),
              OptionButtonItem(
                Icons.replay_sharp,
                'Easy Return',
                'Withing 15 Days',
              ),
              OptionButtonItem(
                Icons.lock_outline_rounded,
                'Secure Payment',
                'Online Shopping',
              ),
              OptionButtonItem(
                Icons.card_giftcard_rounded,
                'Best Offer',
                'Guaranteed',
              ),
            ],
          ),
          const SizedBox(height: 100),
          const Divider(),
          Container(
            height: 500,
            width: 550,
            child: Row(
              children: [
                Container(
                  height: 460,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_florist_rounded,
                            size: 50,
                            color: greenColor,
                          ),
                          const Text(
                            'Leafy',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 30,
                            color: Colors.black45,
                          ),
                          Text(
                            '+60-001-004',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black87,
                                fontFamily: 'Ysabeau'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.markunread,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Text(
                            'example@Furniture.com',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Text(
                            '123, Main Street Anytown, 12345',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 460,
                  width: 470,
                  padding: EdgeInsets.only(left: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Importan Links',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Home',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> About Us',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Shop',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Blog',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Contact',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Order Track',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 460,
                  width: 470,
                  padding: EdgeInsets.only(right: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Services',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Home',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> About Us',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Shop',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Blog',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Contact',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '> Order Track',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 460,
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Subscribe Updates',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Sign up to our mailing list now!',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Enter Your Email',
                        style: TextStyle(
                            fontFamily: 'Usabeau',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      const SizedBox(height: 50),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(400, 50),
                          backgroundColor: greenColor,
                          shape: BeveledRectangleBorder(
                            side: BorderSide(color: greenColor),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Subcribe',
                          style: TextStyle(
                              fontFamily: 'Usabeau',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
