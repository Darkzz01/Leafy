import 'package:flutter/material.dart';
import 'package:leafy/pages/shop/shop.dart';

import 'pages/home/home.dart';
import 'pages/sing_in.dart';
import 'pages/sing_up.dart';

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
        '/signIn': (context) => const SingIn(),
        '/signUp': (context) => const SingUp(),
      },
    );
  }
}
