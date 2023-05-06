import 'package:flutter/material.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:leafy/widgets/footer/footer.dart';

import '../data/dictionary.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
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
                  'Sing Up',
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
                        'Sing Up',
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
            height: 1300,
            margin: const EdgeInsets.symmetric(horizontal: 650),
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
                  'Sing Up',
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
                  'name*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Name',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'UserName*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Last Name',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Address*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your mail',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Country*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Country',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'State*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your City',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'City*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your City',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Password*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'Confirmed Password*',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 42,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(24, 0, 0, 0),
                    border: Border.all(
                      color: const Color.fromARGB(12, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirmed Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Ysabeau',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    fixedSize: const Size(100, 40),
                    backgroundColor: greenColor,
                    shape: const BeveledRectangleBorder(),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sing in',
                    style: TextStyle(
                      fontFamily: 'YSabeau',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    const Text(
                      "Don't Have Account",
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
          Divider(
            color: Colors.black12,
          ),
          Footer(),
        ],
      ),
    );
  }
}
