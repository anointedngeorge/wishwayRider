import 'package:flutter/material.dart';
import 'package:wishway_rider/presentation/homepage/home.dart';
// import 'package:wishway_rider/presentation/landing/bloc/landing_bloc.dart';
import 'package:wishway_rider/presentation/onboarding_screen/onboarding_page.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String landingPage = '/landingpage';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: OnboardingScreen.builder,
        landingPage: HomePage.builder,
      };
}
