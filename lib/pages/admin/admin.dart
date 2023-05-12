import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/data/models/product.dart';
import 'package:leafy/data/models/user.dart';
import 'package:leafy/data/provider/provider.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:provider/provider.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final main = Provider.of<MainProvider>(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const MenuAppBar(),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.2,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(350, 40),
                            shape: const BeveledRectangleBorder(),
                            backgroundColor: greenColor,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/signUp');
                          },
                          child: const Text(
                            'New User',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(350, 40),
                            shape: const BeveledRectangleBorder(),
                            backgroundColor: greenColor,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/newProduct');
                          },
                          child: const Text(
                            'New Product',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(350, 40),
                            shape: const BeveledRectangleBorder(),
                            backgroundColor: greenColor,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/sql');
                          },
                          child: const Text(
                            'SQL',
                            style: TextStyle(
                              fontFamily: 'Ysabeau',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Divider(height: 0),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: size.width * 0.8,
                          child: ListView(
                            children: [
                              DataTable(
                                columns: generateColumn(),
                                rows: generateUser(main.getUsers, main),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.8,
                        child: const Divider(),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: size.width * 0.8,
                          child: ListView(
                            children: [
                              DataTable(
                                columns: generateColumn0(),
                                rows: generateproduct(main.getProducts, main),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DataRow> generateUser(List<User> users, MainProvider main) {
    List<DataRow> aux = [];

    users.forEach((element) {
      TextStyle cellStyle = const TextStyle(
        fontFamily: 'Ysabeau',
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      );

      DataRow row = DataRow(
        cells: [
          DataCell(Text(
            element.name,
            style: cellStyle,
          )),
          DataCell(Text(
            element.lastName,
            style: cellStyle,
          )),
          DataCell(Text(
            element.email,
            style: cellStyle,
          )),
          DataCell(Text(
            element.country,
            style: cellStyle,
          )),
          DataCell(Text(
            element.state,
            style: cellStyle,
          )),
          DataCell(Text(
            element.city,
            style: cellStyle,
          )),
          DataCell(
            TextButton(
              onPressed: () {
                main.deleteUser(element);
              },
              child: const Text(
                'Delete',
                style: TextStyle(
                  fontFamily: 'Ysabeau',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 163, 9, 9),
                ),
              ),
            ),
          ),
        ],
      );
      aux.add(row);
    });

    return aux;
  }

  List<DataColumn> generateColumn() {
    TextStyle columnStyle = const TextStyle(
      fontFamily: 'Ysabeau',
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );

    List<DataColumn> aux = [
      DataColumn(
          label: Text(
        'Name',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Last Name',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Email',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Country',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'State',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'City',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Delete',
        style: columnStyle,
      )),
    ];
    return aux;
  }

  List<DataColumn> generateColumn0() {
    TextStyle columnStyle = const TextStyle(
      fontFamily: 'Ysabeau',
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );

    List<DataColumn> aux = [
      DataColumn(
          label: Text(
        'Image',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Name of product',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Price',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'OldPrice',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Description',
        style: columnStyle,
      )),
      DataColumn(
          label: Text(
        'Delete',
        style: columnStyle,
      )),
    ];
    return aux;
  }

  List<DataRow> generateproduct(List<Product> products, MainProvider main) {
    List<DataRow> aux = [];

    products.forEach((element) {
      TextStyle cellStyle = const TextStyle(
        fontFamily: 'Ysabeau',
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      );

      DataRow row = DataRow(cells: [
        DataCell(Text(
          element.image,
          style: cellStyle,
        )),
        DataCell(Text(
          element.name,
          style: cellStyle,
        )),
        DataCell(Text(
          element.price,
          style: cellStyle,
        )),
        DataCell(Text(
          element.oldPrice,
          style: cellStyle,
        )),
        DataCell(Text(
          element.descripcion,
          style: cellStyle,
        )),
        DataCell(
          TextButton(
            onPressed: () {
              main.deleteProduct(element);
            },
            child: const Text(
              'Delete',
              style: TextStyle(
                fontFamily: 'Ysabeau',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 163, 9, 9),
              ),
            ),
          ),
        ),
      ]);
      aux.add(row);
    });

    return aux;
  }
}
