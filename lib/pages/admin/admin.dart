import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
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
                    width: 250,
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Divider(),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        DataTable(
                          columns: generateColumn(),
                          rows: generateUser(main.getUsers, main),
                        ),
                      ],
                    ),
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
                main.delete(element);
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
}
