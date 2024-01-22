import 'package:flutter/material.dart';
import 'package:wishway_rider/presentation/authentication/login.dart';
import 'package:wishway_rider/presentation/homepage/home.dart';
import 'package:wishway_rider/presentation/onboarding_screen/onboarding_page.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings params) {
    final args = params.arguments;

    switch (params.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/login":
        return MaterialPageRoute(builder: (_) => const Loginpage());

      default:
        return _errorPage();
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Page Not Found Error!"),
          ),
          body: const Text("Error Page not Found!"),
        );
      },
    );
  }
}
