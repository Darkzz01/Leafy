import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      width: 550,
      child: Row(
        children: [
          Expanded(
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
          Expanded(
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
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> About Us',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Shop',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Blog',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Contact',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Order Track',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Services',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
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
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> About Us',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Shop',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Blog',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Contact',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '> Order Track',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Sign up to our mailing list now!',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter Your Email',
                  style: TextStyle(
                    fontFamily: 'Usabeau',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 50),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(400, 50),
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
