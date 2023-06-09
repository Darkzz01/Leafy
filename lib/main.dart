import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:leafy/data/models/product_model.dart';
import 'package:leafy/data/provider/provider.dart';
import 'package:leafy/pages/admin/admin.dart';
import 'package:leafy/pages/admin/add_product.dart';
import 'package:leafy/pages/shop/shop.dart';
import 'package:leafy/pages/sql/sql.dart';
import 'package:provider/provider.dart';

import 'pages/home/home.dart';
import 'pages/sing_in.dart';
import 'pages/sing_up.dart';

late Box mainBox;
late Box productBox;

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  mainBox = await Hive.openBox('Main');
  productBox = await Hive.openBox('Product');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainProvider(),
        ),
      ],
      child: MaterialApp(
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
          '/admin': (context) => const Admin(),
          '/newProduct': (context) => AddProduct(),
          '/sql': (context) => const SQL(),
        },
      ),
    );
  }
}
