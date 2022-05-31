import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/mock_data/job_data.dart';
import 'package:capstone_flutter/routes/route_manager.dart';
import 'package:capstone_flutter/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Jobs>(
      create: (context) => Jobs(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Search App',
        initialRoute: SplashScreen.routeName,
        onGenerateRoute: RouteManager.generateRoute,
        theme: appTheme,
      ),
    );
  }
}
