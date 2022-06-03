import 'package:capstone_flutter/mock_data/company_data.dart';
import 'package:capstone_flutter/mock_data/category_data.dart';
import 'package:capstone_flutter/mock_data/qualifications_data.dart';
import 'package:capstone_flutter/models/job.dart';
import 'package:flutter/material.dart';

class Jobs with ChangeNotifier {
  List<Job> jobs = [
    Job(
      id: 'job1',
      name: 'Sr. UI/UX Designer',
      type: 'Full Time',
      company: CompanyData.companies[0],
      qualifications: Qualifications.uxDesigner,
      subCategory: CategoryData.categories[0].subCategory[1].name,
      salary: '\$1900',
      datePosted: DateTime.now(),
      numberOfApplicants: 50,
    ),
    Job(
      id: 'job2',
      name: 'Full Stack Developer',
      type: 'Full Time',
      company: CompanyData.companies[0],
      qualifications: Qualifications.fullStack,
      subCategory: CategoryData.categories[1].subCategory[2].name,
      salary: '\$1200',
      datePosted: DateTime(2022, 5, 20, 23, 0),
      numberOfApplicants: 80,
    ),
    Job(
      id: 'job3',
      name: 'Front-End Developer',
      type: 'Full Time',
      company: CompanyData.companies[1],
      qualifications: Qualifications.frontEnd,
      subCategory: CategoryData.categories[1].subCategory[0].name,
      salary: '\$1146',
      datePosted: DateTime(2022, 5, 22, 8, 20),
      numberOfApplicants: 35,
    ),
    Job(
      id: 'job4',
      name: 'Helpdesk Coordinator',
      type: 'Full Time',
      company: CompanyData.companies[1],
      qualifications: Qualifications.helpDesk,
      subCategory: CategoryData.categories[2].subCategory[2].name,
      salary: '\$955',
      datePosted: DateTime(2022, 5, 23, 17, 30),
      numberOfApplicants: 10,
    ),
  ];
}
