import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/sqflite/sqflite.dart';

class SQLController {
  static const int _version = 1;
  static const String _dbName = "Name.db";

  static Future<Database> _getDB() async {
    return openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async => await db.execute(""),
      version: _version,
    );
  }

  static Future<int> addName(Name name) async {
    final db = await _getDB();

    return await db.insert(
      "Name",
      name.tojson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<int> update(Name name) async {
    final db = await _getDB();

    return await db.update(
      "Name",
      name.tojson(),
      where: 'id = ?',
      whereArgs: [name.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<int> delete(Name name) async {
    final db = await _getDB();

    return await db.delete(
      "Name",
      where: 'id = ?',
      whereArgs: [name.id],
    );
  }

  static Future<List<Name>?> getAllName() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("Name");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(
      maps.length,
      (index) => Name.fromjson(
        maps[index],
      ),
    );
  }
}
