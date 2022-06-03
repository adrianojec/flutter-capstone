import 'package:capstone_flutter/models/company.dart';

class Job {
  final String id;
  final String name;
  final String type;
  final Company company;
  final List<String> qualifications;
  final String subCategory;
  final String salary;
  final DateTime datePosted;
  final int numberOfApplicants;

  Job({
    required this.id,
    required this.name,
    required this.type,
    required this.company,
    required this.qualifications,
    required this.subCategory,
    required this.salary,
    required this.datePosted,
    required this.numberOfApplicants,
  });
}
