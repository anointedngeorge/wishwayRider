import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wishway_rider/routes/routes_generator.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait(
    [
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
      PrefUtils().init()
    ],
  ).then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(
        ThemeState(
          themeType: PrefUtils().getThemeData(),
        ),
      ),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: theme,
            title: 'Wishway',
            navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            // localizationsDelegates: const [
            //   AppLocalizationDelegate(),
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            supportedLocales: const [
              Locale(
                'en',
                '',
              ),
            ],
            initialRoute: '/',
            onGenerateRoute: RoutesGenerator.generateRoute,
          );
        },
      ),
    );
  }
}
