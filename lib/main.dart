import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/mock_data/job_data.dart';
import 'package:capstone_flutter/providers/auth_with_change_notifier.dart';
import 'package:capstone_flutter/providers/users_with_change_notifier.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Jobs>(create: (context) => Jobs()),
        ChangeNotifierProvider<Users>(create: (context) => Users()),
        ChangeNotifierProvider<Auth>(create: (context) => Auth()),
      ],
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
