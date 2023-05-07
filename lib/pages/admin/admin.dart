import 'package:flutter/material.dart';
import 'package:leafy/data/dictionary.dart';
import 'package:leafy/widgets/appBar/app_bar.dart';
import 'package:provider/provider.dart';

import '../../data/provider/provider.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    final main = Provider.of<MainProvider>(context);
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
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.02),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: const [
                              SizedBox(width: 15),
                              Icon(
                                Icons.add_rounded,
                                color: Colors.black54,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'User',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Divider(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(7),
                              boxShadow: const [],
                            ),
                            child: FutureBuilder(
                              future: main.getData(),
                              // FutureBuilder - - - - - - - - - - - - - - - - - - - - //
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return SizedBox(
                                    width: size.width * 0.8,
                                    height: size.height * 0.8,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: greenColor,
                                      ),
                                    ),
                                  );
                                }

                                if (snapshot.data.isEmpty) {
                                  return const Text('No data available');
                                }

                                return DataTable(
                                  headingTextStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
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
                                  rows: [
                                    DataRow(
                                      cells: [
                                        const DataCell(
                                          SizedBox(
                                            child: Text(
                                              '0',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].name,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].lastName,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].email,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].country,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].state,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          SizedBox(
                                            width: 90,
                                            child: Text(
                                              snapshot.data[0].city,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
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
