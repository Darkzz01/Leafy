import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:leafy/data/dictionary.dart';

class MenuBodyProduct extends StatefulWidget {
  const MenuBodyProduct({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.oldPrice,
    required this.banner,
    required this.showButton,
    required this.isExpanded,
  }) : super(key: key);

  final String title;
  final String image;
  final double price;
  final double oldPrice;
  final bool banner;
  final bool showButton;
  final bool isExpanded;

  @override
  State<MenuBodyProduct> createState() => _MenuBodyProductState();
}

class _MenuBodyProductState extends State<MenuBodyProduct> {
  @override
  Widget build(BuildContext context) {
    return widget.isExpanded
        ? Expanded(
            child: child(),
          )
        : child();
  }

  Container child() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 173, 173, 173),
      ),
      child: Column(
        crossAxisAlignment: widget.showButton
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Container(
            height: 310,
            width: 390,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 222, 222),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      widget.image,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                widget.banner
                    ? Positioned(
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
                      )
                    : Container(),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Ysabeau',
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: widget.showButton
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Text(
                formatCurrency.format(widget.price),
                style: TextStyle(
                  fontSize: 20,
                  color: greenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                formatCurrency.format(widget.oldPrice),
                style: const TextStyle(
                  color: Colors.black45,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          widget.showButton
              ? OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 30),
                    foregroundColor: Colors.green,
                    shape: const BeveledRectangleBorder(),
                    side: BorderSide(
                      color: greenColor,
                      width: 1,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontFamily: 'Ysabeau',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
