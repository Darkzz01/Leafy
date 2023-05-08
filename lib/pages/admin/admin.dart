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
                    child: Column(
                      children: [
                        FutureBuilder(
                          future: main.getData(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return SizedBox(
                                height: size.height / 1.5,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: greenColor,
                                  ),
                                ),
                              );
                            }

                            return DataTable(
                              columns: const [
                                DataColumn(label: Text('Name')),
                                DataColumn(label: Text('Last Name')),
                                DataColumn(label: Text('Email')),
                                DataColumn(label: Text('Country')),
                                DataColumn(label: Text('State')),
                                DataColumn(label: Text('City')),
                              ],
                              rows: [],
                            );
                          },
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
}
