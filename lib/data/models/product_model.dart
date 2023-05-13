// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  String image;
  @HiveField(1)
  String name;
  @HiveField(2)
  String price;
  @HiveField(3)
  String oldPrice;
  @HiveField(4)
  String description;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.description,
  });
}
