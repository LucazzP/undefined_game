import 'package:flutter/material.dart';
import 'package:undefined_game/src/pages/home/home_module.dart';
import 'package:undefined_game/src/pages/login/login_module.dart';

class AppRoutes{
  Map<String, WidgetBuilder> routeMain(){
    return {
      '/' : (context) => LoginModule(),
      '/home' : (context) => HomeModule()
    };
  }
}