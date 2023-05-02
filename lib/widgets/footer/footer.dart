import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      width: 550,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
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
                        fontWeight: FontWeight.w500,
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
          const SizedBox(width: 100),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 30),
                Text(
                  'Importan Links',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Home',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> About Us',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Shop',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Blog',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Contact',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Order Track',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 30),
                Text(
                  'Services',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Home',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> About Us',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Shop',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Blog',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Contact',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Order Track',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Subscribe Updates',
                  style: TextStyle(
                    fontFamily: 'Ysabeau',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Sign up to our mailing list now!',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Enter Your Email',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 55),
                    backgroundColor: greenColor,
                    shape: const BeveledRectangleBorder(side: BorderSide.none),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Subcribe',
                    style: TextStyle(
                      fontFamily: 'Usabeau',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
