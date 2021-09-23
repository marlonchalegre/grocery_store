import 'package:flutter/material.dart';

import 'package:grocery_store/controllers/son_controller.dart';

class MeuFilho extends StatefulWidget {
  final MeuFilhoController controller;
  final Function(String) onColorChanged;

  MeuFilho({
    Key? key,
    required this.controller,
    required this.onColorChanged,
  }) : super(key: key);

  @override
  _MeuFilhoState createState() => _MeuFilhoState();
}

class _MeuFilhoState extends State<MeuFilho> {
  MaterialColor _color = Colors.red;

  @override
  void initState() {
    super.initState();
    this.widget.controller.addListener(listenColorChange);
  }

  void listenColorChange() {
    print("Changing");
    _color = this.widget.controller.color;
    var result = _color == Colors.red ? "Vermelho" : "Azul";
    this.widget.onColorChanged(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: _color,
    );
  }
}
