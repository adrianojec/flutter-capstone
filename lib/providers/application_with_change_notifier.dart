import 'package:capstone_flutter/models/job.dart';
import 'package:capstone_flutter/providers/user_with_change_notifier.dart';
import 'package:flutter/material.dart';

class Application with ChangeNotifier {
  final String id;
  final User user;
  final String firstName;
  final String lastName;
  final Job jobApplied;
  final String pdfLocation;

  Application({
    required this.id,
    required this.user,
    required this.firstName,
    required this.lastName,
    required this.jobApplied,
    required this.pdfLocation,
  });

  List<Application> _applications = List.empty(growable: true);

  List<Application> get applications => _applications;

  void addApplication(Application job) {
    _applications.add(job);
    notifyListeners();
  }
}
