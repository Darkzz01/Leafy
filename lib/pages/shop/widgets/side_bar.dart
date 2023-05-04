import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/pages/shop/widgets/color_selector.dart';
import 'package:leafy/pages/shop/widgets/dropdown_head.dart';

import 'rate.dart';
import 'tag.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  RangeValues values = const RangeValues(2500, 5000);

  double startPrice = 2500;
  double endPrice = 5000;

  List<Color> colors = [
    Colors.red,
    Colors.black,
    Colors.white,
    Colors.blueGrey,
    Colors.cyan,
    Colors.orangeAccent,
    Colors.pink,
    Colors.pinkAccent,
    Colors.purple,
    Colors.blue,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // color: Colors.green.shade100,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        height: 1700,
        child: Column(
          children: [
            // Search - - - - - - - - - - - - - - - - - - - - //
            Container(
              height: 90,
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontFamily: 'Ysabeau',
                      ),
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                          ),
                        ),
                        hintText: 'Search Products',
                        hintStyle: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45,
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
            const SizedBox(height: 50),
            // Category - - - - - - - - - - - - - - - - - - - //
            Column(
              children: [
                // Head - - - - - - - - - - - - - - - - - - - - //
                const DropDownHead(
                  title: 'Category',
                ),
                const SizedBox(height: 10),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Wooden Forniture',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                          fontFamily: 'Ysabeau',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '19',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: 'Ysabeau',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black12,
                    ),
                  ),
                  child: const Banner(
                    location: BannerLocation.topEnd,
                    message: 'Zaquiel',
                    color: Color.fromARGB(255, 191, 26, 14),
                    child: Placeholder(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            // Prices - - - - - - - - - - - - - - - - - - - //
            Column(
              children: [
                const DropDownHead(title: 'Prices'),
                RangeSlider(
                  activeColor: greenColor,
                  inactiveColor: Colors.black12,
                  max: 10000,
                  min: 0,
                  values: values,
                  onChanged: (value) {
                    values = value;
                    startPrice = value.start;
                    endPrice = value.end;
                    setState(() {});
                  },
                ),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    const Text(
                      'Price:',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Ysabeau',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '\$${startPrice.round()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '\$${endPrice.round()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 80),
            // Size - - - - - - - - - - - - - - - - - - - //
            Column(
              children: const [
                DropDownHead(title: 'Size'),
              ],
            ),
            const SizedBox(height: 80),
            // Color - - - - - - - - - - - - - - - - - - - //
            Column(
              children: [
                const DropDownHead(title: 'Color'),
                Wrap(
                  children: [
                    for (int i = 0; i < colors.length; i++)
                      ColorSelector(
                        color: colors[i],
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 80),
            // Rating - - - - - - - - - - - - - - - - - - - //
            Column(
              children: [
                const DropDownHead(title: 'Rating'),
                const SizedBox(height: 10),
                rate(5),
                rate(4),
                rate(3),
                rate(2),
                rate(1),
              ],
            ),
            const SizedBox(height: 80),
            // Tags - - - - - - - - - - - - - - - - - - - //
            Column(
              children: [
                const DropDownHead(title: 'Tags'),
                const SizedBox(height: 10),
                Wrap(
                  children: [
                    tag('Table'),
                    tag('Almirah'),
                    tag('Bed'),
                    tag('Cabinet'),
                    tag('Plastic Chair'),
                    tag('Sofa'),
                    tag('Stool'),
                    tag('Bombay Chair'),
                    tag('Chair'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
