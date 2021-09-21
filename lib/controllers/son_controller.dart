import 'package:flutter/material.dart';

class MeuFilhoController extends ChangeNotifier {
  Color _color = Colors.amber;

  set color(Color color) {
    this._color = color;
    this.notifyListeners();
  }

  Color get color {
    return _color;
  }
}
