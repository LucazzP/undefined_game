import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/palette.dart';

class Palette {
  static const PaletteEntry white = BasicPalette.white;
  static const PaletteEntry red = PaletteEntry(Color(0xFFFF0000));
  static const PaletteEntry blue = PaletteEntry(Color(0xFF0000FF));
}

class Square extends PositionComponent {
  static const SPEED = 0.1;
  double dx = 0;
  double dy = 0;
  double direction;
  Size dimensions;

  Square(double size) {
    width = height = size;
    anchor = Anchor.center;
    Flame.util.addGestureRecognizer(new TapGestureRecognizer()
      ..onTapDown = (evt) {
        dx = evt.globalPosition.dx;
        dy = evt.globalPosition.dy;
        direction = evt.globalPosition.direction;
      });
    init();
  }

  init() async {
    dimensions = await Flame.util.initialDimensions();
  }

  @override
  void resize(Size size) {
    x = size.width / 2;
    y = size.height / 2;
  }

  @override
  void render(Canvas c) {
    prepareCanvas(c);
    c.drawRect(Rect.fromLTWH(0, 0, width, height), Palette.white.paint);
    // c.drawRect(Rect.fromLTWH(0, 0, 3, 3), Palette.red.paint);
    // c.drawRect(Rect.fromLTWH(width / 2, height / 2, 3, 3), Palette.blue.paint);
  }

  @override
  void update(double t) {
    if(dx != 0 && dy != 0){
      x += (dx - x) * SPEED;
      y += (dy - y) * SPEED;
      // angle = direction;
    }
    // if((x + 32) <= dimensions.width && (x - 32) >= 0){
    //   x += SPEED * -1;
    // }
    // if((y + 32) <= dimensions.height && (y - 32) >= 30){
    //   y += SPEED * -1;
    // }
    // angle += SPEED * t;
    // angle %= 2 * math.pi;
  }
}

class MyGameWidget extends BaseGame {
  MyGameWidget() {
    add(Square(64.0));
  }
}