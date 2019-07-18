import 'package:undefined_game/src/pages/login/widgets/button_bloc.dart';
import 'package:undefined_game/src/pages/login/login_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:undefined_game/src/pages/login/login_page.dart';

class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ButtonBloc()),
        Bloc((i) => LoginBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => LoginPage();

  static Inject get to => Inject<LoginModule>.of();

  //Alerta
  alert(BuildContext context){
    Size size = MediaQuery.of(context).size;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
//            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            content: Container(
              width: size.width,
              height: size.height * .23,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: size.width,
                        child: Text('Em construção!', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        )),
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * .6, bottom: 0, top: 0),
                        child: IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pop();}, color: Colors.black54, padding: EdgeInsets.zero,),
                      ),
                    ],
                  ),
                  Text('Pedimos desculpas, mas o login pelo facebook ainda não está disponível.', textAlign: TextAlign.center, style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400
                  )),
                ],
              ),
            )
        );
      },
    );
  }
}
