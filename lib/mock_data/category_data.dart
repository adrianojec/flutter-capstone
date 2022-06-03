import 'package:capstone_flutter/models/category.dart';
import 'package:capstone_flutter/models/sub_category.dart';
import 'package:flutter/material.dart';

class CategoryData with ChangeNotifier {
  static List<Category> categories = [
    Category(
      name: 'UI/UX Design',
      subCategory: uiSubCategories,
    ),
    Category(
      name: 'Web Development',
      subCategory: webSubCategories,
    ),
    Category(
      name: 'Support',
      subCategory: supportSubCategories,
    ),
  ];
  static List<SubCategory> _subCategories = [];

  List<SubCategory> get subCategories => _subCategories;

  Future<List<SubCategory>> getSubCategories(List<SubCategory> subCategory) async {
    return _subCategories = subCategory;
  }
}

List<SubCategory> uiSubCategories = [
  SubCategory(
    id: 'sub1',
    name: 'UI Designer',
  ),
  SubCategory(
    id: 'sub2',
    name: 'UX Designer',
  ),
  SubCategory(
    id: 'sub3',
    name: 'Visual Designer',
  ),
  SubCategory(
    id: 'sub4',
    name: 'Interaction Designer',
  ),
  SubCategory(
    id: 'sub5',
    name: 'Motion Designer',
  ),
];

List<SubCategory> webSubCategories = [
  SubCategory(
    id: 'web1',
    name: 'Front-End Developer',
  ),
  SubCategory(
    id: 'web2',
    name: 'Full-Stack Developer',
  ),
  SubCategory(
    id: 'web3',
    name: 'Shopify Developer',
  ),
  SubCategory(
    id: 'web4',
    name: '.Net Developer',
  ),
  SubCategory(
    id: 'web5',
    name: 'Python Developer',
  ),
];

List<SubCategory> supportSubCategories = [
  SubCategory(
    id: 'sup1',
    name: 'Desktop Engineer',
  ),
  SubCategory(
    id: 'sup2',
    name: 'Technical Support Engineer',
  ),
  SubCategory(
    id: 'sup3',
    name: 'Help Desk Coordinator',
  ),
  SubCategory(
    id: 'sup4',
    name: 'Application Support',
  ),
  SubCategory(
    id: 'sup5',
    name: 'Support Associate',
  ),
];
