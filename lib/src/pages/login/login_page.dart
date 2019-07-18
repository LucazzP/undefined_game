import 'package:flutter/material.dart';
import 'package:undefined_game/src/pages/home/home_module.dart';
import 'package:undefined_game/src/pages/login/login_module.dart';
import 'package:undefined_game/src/pages/login/widgets/button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset('assets/images/login/fundo.jpg', fit: BoxFit.cover,),
            ),
            Container(
              color: Color(0x429658E1),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: size.height * .5,
                      width: size.width,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: size.width * 0.6,
                        child: Hero(
                            tag: 'logo',
                            child: Image.asset("assets/images/logo.png")
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .4,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        children: <Widget>[
                          ButtonWidget(
                            colorText: Colors.white,
                            color: Color(0xff4267b2),
                            title: "Entrar com Facebook",
                            onTap: () => LoginModule().alert(context),
//                                controller.loginFacebook(),
                            icon: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15,),
                          ButtonWidget(
                              colorText: Colors.black54,
                              color: Colors.white,
                              title: "Entrar com Google",
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed('/home');
                              },
                              icon: Image.asset('assets/images/login/google_icon.png', width: 20, height: 20,)
                          ),
                          InkWell(
                            onTap: (){
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 30, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Entrar ', style: Theme.of(context).textTheme.title.apply(color: Colors.white,)),
                                  Text('ou', style: Theme.of(context).textTheme.title.apply(color: Colors.white, fontFamily: 'FaktPro-Light', fontWeightDelta: -10)),
                                  Text(' criar conta!', style: Theme.of(context).textTheme.title.apply(color: Colors.white,))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
