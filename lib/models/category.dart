import 'package:capstone_flutter/models/sub_category.dart';

class Category {
  final String name;
  final List<SubCategory> subCategory;

  Category({
    required this.name,
    required this.subCategory,
  });
}
