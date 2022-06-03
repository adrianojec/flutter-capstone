import 'package:capstone_flutter/models/review.dart';
import 'dart:ui';

class Company {
  final String id;
  final String name;
  final String logo;
  final Color color;
  final List<Review> reviews;
  final String about;
  final String location;

  Company({
    required this.id,
    required this.name,
    required this.logo,
    required this.color,
    required this.reviews,
    required this.about,
    required this.location,
  });
}
