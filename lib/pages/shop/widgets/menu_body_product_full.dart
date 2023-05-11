import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/app_bar_action.dart';

class MenuBodyProductFull extends StatelessWidget {
  const MenuBodyProductFull({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.oldPrice,
  });
  final String title;
  final String image;
  final double price;
  final double oldPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 150,
      margin: const EdgeInsets.symmetric(vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 222, 222),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      image,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 25,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(89, 178, 126, 1),
                      ),
                      child: const Text(
                        '100 Sales',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Ysabeau',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(0, 4, 20, 48),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Ysabeau',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        formatCurrency.format(price),
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: greenColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        formatCurrency.format(oldPrice),
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontFamily: 'Ysabeau',
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 82, 82, 82),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Shipping & Import Fees Deposit to Bangladesh',
                    style: TextStyle(
                      fontFamily: 'Ysabeau',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(22, 0, 0, 0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 30),
                          foregroundColor: Colors.green,
                          backgroundColor: greenColor,
                          shape: const BeveledRectangleBorder(),
                          side: BorderSide(
                            color: greenColor,
                            width: 1,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      MenuAppBarAction(
                        quarter: 0,
                        icon: Icons.favorite_border_rounded,
                      ),
                      const SizedBox(width: 20),
                      MenuAppBarAction(
                        quarter: 0,
                        icon: Icons.cached_rounded,
                      ),
                      const SizedBox(width: 20),
                      MenuAppBarAction(
                        quarter: 0,
                        icon: Icons.remove_red_eye_outlined,
                      ),
                    ],
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
