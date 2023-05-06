import 'package:flutter/material.dart';
import 'package:leafy/pages/shop/shop.dart';

import 'pages/home/home.dart';
import 'widgets/sing_in.dart';
import 'widgets/sing_up.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leafy',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/shop': (context) => Shop(),
        'sing in': (context) => SingIn(),
        'sing up': (context) => SingUp(),
      },
    );
  }
}
