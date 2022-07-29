import 'package:flutter/material.dart';
import 'package:whatsup_clone/commons/widgets/error.dart';
import 'package:whatsup_clone/features/landing/auth/otp_screen.dart';
import 'package:whatsup_clone/features/landing/auth/screens/user_information.dart';

import 'features/landing/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case UserInformation.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformation(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(error: 'This page doesn\'t exist'),
              ));
  }
}
