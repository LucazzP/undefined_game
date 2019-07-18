import 'package:flutter/material.dart';


class ClickAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Function onTap;

  const ClickAnimation({Key key, @required this.child,  @required this.duration, this.onTap}) : super(key: key);
  @override
  _ClickAnimationState createState() => _ClickAnimationState();
}

class _ClickAnimationState extends State<ClickAnimation> with SingleTickerProviderStateMixin{

  Controller controller;
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: widget.duration);
    super.initState();
  }


  @override
  void didChangeDependencies() {
    controller = Controller(context, animationController,widget.onTap);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, snapshot) {
        return GestureDetector(
            onTap: (){
              controller.handleClick();
            },
                  child: Transform.scale(
            scale: controller.scale.value,
                    child: widget.child
          ),
        );
      }
    );
  }
}


class Controller{

  final BuildContext context;
  final AnimationController animationController;
  final Function onTap;

  Animation scale;

  Controller(this.context, this.animationController, this.onTap){

    scale = Tween(begin: 1.0,end:0.9).animate(animationController);

  }



  void listClicked() {
    if (animationController.isCompleted) {
      animationController.reverse();
      onTap();
      animationController.removeListener(listClicked);
    }
  }

  void handleClick() {
    animationController.forward();
    animationController.addListener(listClicked);
  }

  void dispose()=> animationController.dispose();
}