import 'package:flutter/material.dart';
import 'package:undefined_game/src/shared/widgets/button_animated_widget.dart';

class ButtonWidget extends StatefulWidget {
  final String title;
  final Widget icon;
  final Function onTap;
  final Color color;
  final Color colorText;

  const ButtonWidget({Key key, this.title, this.icon, this.onTap, this.color, this.colorText})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClickAnimation(
      duration: Duration(milliseconds: 100),
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: size.width * .8,
            height: 60.0,
            decoration: BoxDecoration(
                color: widget.color, borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                widget.icon,
                SizedBox(width: size.width * .03,),
                Container(
                  width: size.width * .58,
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: widget.colorText, fontFamily: 'Roboto', letterSpacing: 0.33, fontSize: 20),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
