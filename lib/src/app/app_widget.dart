import 'package:flutter/material.dart';
import 'package:undefined_game/src/app/routes.dart';
import 'package:undefined_game/src/pages/home/home_module.dart';
import 'package:undefined_game/src/pages/login/login_module.dart';
import 'package:undefined_game/src/app/styles/theme_style.dart';
import 'package:undefined_game/src/shared/locale/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: AppTheme().themeData(),
      routes: AppRoutes().routeMain(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppLocaleDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
        // const Locale('en'),
      ],
    );
  }
}
