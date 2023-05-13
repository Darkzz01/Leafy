// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String lastName;

  ProductModel({
    required this.name,
    required this.lastName,
  });
}
