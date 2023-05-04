import 'package:flutter/material.dart';
import 'package:leafy/widgets/body/body_product.dart';

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
        height: 1700,
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
                Container(
                  height: 50,
                  width: 200,
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
                      children: [
                        Container(
                          height: 500,
                          width: 200,
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
