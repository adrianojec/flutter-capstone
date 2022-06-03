import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/mock_data/reviews_data.dart';
import 'package:capstone_flutter/models/company.dart';
import 'package:flutter/material.dart';

class CompanyData {
  static List<Company> companies = [
    Company(
      id: 'comp1',
      name: 'Eclaro',
      logo: 'assets/images/company/eclaro.jpg',
      color: const Color(0xFF012060),
      reviews: Reviews.eclaroReviews,
      about:
          'ECLARO is an IT and Business Consulting Firm which was founded in the United States in 1999 and has offices in the US, Canada, Puerto Rico and here in the Philippines. We support a number of our American and other global clients from our office in Quezon City. ECLARO’s core competency can be found in the recruitment, management, and administration of deploying contingent staff of highly skilled individuals in these specialized disciplines. ECLARO has developed a flexible array of service offerings from project work, to staff augmentation, permanent placement, outplacement, HR outsourcing, payroll and training.',
      location: 'New York, NY',
    ),
    Company(
      id: 'comp2',
      name: 'IBM',
      logo: 'assets/images/company/ibm.png',
      color: Palette.kBodyColor.withOpacity(0.3),
      reviews: Reviews.ibmReviews,
      about:
          'IBM is the largest technology and consulting employer in the world, serving clients in 170 countries. In this new era of Cognitive Business, we\'re reshaping the future of health, education, fashion, travel, green energy, and more, using groundbreaking cognitive solutions, cloud computing technology, and quantum computing.Imagine what you can do at IBM.',
      location: 'Quezon City, PH',
    ),
    Company(
      id: 'comp3',
      name: 'Fujitsu',
      logo: 'assets/images/company/fujitsu.png',
      color: Colors.white,
      reviews: Reviews.fujitsuReviews,
      about:
          'Fujitsu Philippines Inc. (FPI) is one of the country’s leading Information and Communications Technology (ICT) system integrators. Our local knowledge comes from over 40 years of operations in the Philippines, while our global expertise comes from our affiliation with Fujitsu Ltd. of Japan, an international leader in computers, telecommunication, electronic components, software, and services.',
      location: 'Makati City, PH',
    ),
  ];
}
