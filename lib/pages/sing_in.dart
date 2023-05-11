import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/data/provider/provider.dart';
import 'package:leafy/widgets/footer/footer.dart';
import 'package:provider/provider.dart';
import '../widgets/appBar/app_bar.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  'User Login',
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
                        'User Login',
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
            height: 580,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 330,
              margin: EdgeInsets.symmetric(horizontal: size.width / 2.9),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 0),
                  const Text(
                    'Sing in',
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
                    'Username*',
                    style: TextStyle(
                      fontFamily: 'Ysabeau',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(3, 161, 160, 160),
                      border: Border.all(
                        color: const Color.fromARGB(12, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: emailController,
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your username',
                        hintStyle: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
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
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(8, 194, 194, 194),
                      border: Border.all(
                        color: const Color.fromARGB(19, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: passwordController,
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontFamily: 'Ysabeau',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(183, 0, 0, 0),
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 17,
                            color: Color.fromARGB(183, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      fixedSize: const Size(100, 40),
                      backgroundColor: greenColor,
                      shape: const BeveledRectangleBorder(),
                    ),
                    onPressed: () {
                      for (var element in main.getUsers) {
                        if (element.email == emailController.text &&
                            element.password == passwordController.text) {
                          Navigator.pushReplacementNamed(context, '/');
                        }
                      }
                    },
                    child: const Text(
                      'Sing in',
                      style: TextStyle(
                        fontFamily: 'YSabeau',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Text(
                        "Don't Have An Account",
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
                          'Sing up',
                          style: TextStyle(
                            fontFamily: 'Ysabeau',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.black12,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
