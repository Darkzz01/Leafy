import 'package:flutter/material.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const MenuAppBar(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DataTable(
                            columnSpacing: size.width * 0.08,
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(
                                label: Text('ID'),
                              ),
                              DataColumn(
                                label: Text('Name'),
                              ),
                              DataColumn(
                                label: Text('Last Name'),
                              ),
                              DataColumn(
                                label: Text('Email'),
                              ),
                              DataColumn(
                                label: Text('Country'),
                              ),
                              DataColumn(
                                label: Text('State'),
                              ),
                              DataColumn(
                                label: Text('City'),
                              ),
                            ],
                            rows: const [
                              DataRow(
                                cells: [
                                  DataCell(
                                    Text('1'),
                                  ),
                                  DataCell(
                                    Text('Justin'),
                                  ),
                                  DataCell(
                                    Text('@'),
                                  ),
                                  DataCell(
                                    Text('@'),
                                  ),
                                  DataCell(
                                    Text('@'),
                                  ),
                                  DataCell(
                                    Text('@'),
                                  ),
                                  DataCell(
                                    Text('@'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
}
