import 'package:flutter/material.dart';

class MeuFilhoController extends ChangeNotifier {
  MaterialColor _color = Colors.amber;

  set color(MaterialColor color) {
    this._color = color;
    this.notifyListeners();
  }

  MaterialColor get color {
    return _color;
  }
}
