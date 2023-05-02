import 'package:flutter/material.dart';
import 'package:leafy/pages/shop.dart';

import 'pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leafy',
      initialRoute: '/shop',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home(),
        '/shop': (context) => Shop(),
      },
    );
  }
}
