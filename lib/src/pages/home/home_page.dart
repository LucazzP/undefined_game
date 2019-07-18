import 'package:flutter/material.dart';
import 'package:undefined_game/src/shared/locale/locales.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: <Widget>[
          Text(AppLocale.of(context).getText('title'))
        ],
      ),
    );
  }
}
