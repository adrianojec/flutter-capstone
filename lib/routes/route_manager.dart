import 'package:capstone_flutter/home_with_navbar.dart';
import 'package:capstone_flutter/screens/applications/applications.dart';
import 'package:capstone_flutter/screens/call/call.dart';
import 'package:capstone_flutter/screens/job_apply/job_apply.dart';
import 'package:capstone_flutter/screens/login/login.dart';
import 'package:capstone_flutter/screens/message_content/message_content.dart';
import 'package:capstone_flutter/screens/profile/profile.dart';
import 'package:capstone_flutter/screens/register/register.dart';
import 'package:capstone_flutter/screens/search/search.dart';
import 'package:capstone_flutter/screens/settings/settings.dart';
import 'package:capstone_flutter/screens/splash/splash.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RegisterScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case HomeWithNavbar.routeName:
        return MaterialPageRoute(builder: (_) => const HomeWithNavbar());
      case MessageContentScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MessageContentScreen());
      case CallScreen.routeName:
        return MaterialPageRoute(builder: (_) => const CallScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case SettingsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case SearchScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case JobApplyScreen.routeName:
        return MaterialPageRoute(builder: (_) => const JobApplyScreen());
      case ApplicationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ApplicationScreen());
      default:
        return throw Exception('ERROR 404: Page not found');
    }
  }
}
