import 'package:flutter/material.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import '../../data/dictionary.dart';
import '../../data/models/product_model.dart';
import '../../main.dart';
import '../../widgets/footer/footer.dart';

class AddProduct extends StatefulWidget {
  AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController oldPriceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          const MenuAppBar(),
          const SizedBox(height: 50),
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
                  'Add Product',
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
                        Navigator.pushNamed(context, '/');
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
                        'Add Product',
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
          Container(
            height: 850,
            margin: EdgeInsets.symmetric(horizontal: size.width / 4.7),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(0, 155, 156, 158),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'New Product',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(226, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Image*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: imageController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Url',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'name*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Name of Product',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'price*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: priceController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Price of Product',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'OldPrice*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: oldPriceController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type OldPrice of Product',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Description*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Description of Product',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width / 4.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    fixedSize: const Size(150, 40),
                    backgroundColor: greenColor,
                    shape: const BeveledRectangleBorder(),
                  ),
                  onPressed: () {
                    productBox.add(
                      ProductModel(
                        image: imageController.text,
                        name: nameController.text,
                        price: priceController.text,
                        oldPrice: oldPriceController.text,
                        description: descriptionController.text,
                      ),
                    );
                    setState(() {});
                  },
                  child: const Text(
                    'Add Product',
                    style: TextStyle(
                      fontFamily: 'YSabeau',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Divider(
            color: Colors.black12,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
