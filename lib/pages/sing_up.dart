import 'package:flutter/material.dart';
import 'package:leafy/data/models/product_model.dart';
import 'package:leafy/data/models/user.dart';
import 'package:leafy/data/provider/provider.dart';
import 'package:leafy/main.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:leafy/widgets/footer/footer.dart';
import 'package:provider/provider.dart';

import '../data/dictionary.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  List controllers = [
    for (int i = 0; i < 7; i++) TextEditingController(),
  ];

  @override
  Widget build(BuildContext context) {
    final main = Provider.of<MainProvider>(context);
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
                  'User Register',
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
                        'User Register',
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
            height: 1080,
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
                  'Sing up',
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
                  'Name*',
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
                    controller: controllers[0],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Name',
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
                  'Username*',
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
                    controller: controllers[1],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Last Name',
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
                  'Email Address*',
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
                    controller: controllers[2],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your mail',
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
                  'Country*',
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
                    controller: controllers[3],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Select Country',
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
                  'State*',
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
                    controller: controllers[4],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your City',
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
                  'City*',
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
                    controller: controllers[5],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your City',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Password*',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(12, 0, 0, 0),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextField(
                              controller: controllers[6],
                              textAlign: TextAlign.start,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type your Password',
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
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Confirmed Password*',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(12, 0, 0, 0),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Confirmed Password',
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
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width / 4.6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    fixedSize: const Size(100, 40),
                    backgroundColor: greenColor,
                    shape: const BeveledRectangleBorder(),
                  ),
                  onPressed: () {
                    final user = User(
                      name: controllers[0].text,
                      lastName: controllers[1].text,
                      email: controllers[2].text,
                      country: controllers[3].text,
                      state: controllers[4].text,
                      city: controllers[5].text,
                      password: controllers[6].text,
                    );

                    main.setUsers = user;

                    setState(() {});
                  },
                  child: const Text(
                    'Sing Up',
                    style: TextStyle(
                      fontFamily: 'YSabeau',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Don't Have Account?",
                      style: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 17,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 1),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sing in',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 17,
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
          const SizedBox(height: 30),
          const Divider(
            color: Colors.black12,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
