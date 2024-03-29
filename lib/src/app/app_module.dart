import 'package:undefined_game/src/app/game_widget.dart';
import 'package:undefined_game/src/pages/login/login_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:undefined_game/src/app/app_widget.dart';
import 'package:undefined_game/src/app/app_bloc.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => MyGameWidget().widget;

  static Inject get to => Inject<AppModule>.of();
}
