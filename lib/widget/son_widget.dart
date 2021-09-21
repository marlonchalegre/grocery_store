import 'package:flutter/material.dart';
import 'package:grocery_store/controllers/son_controller.dart';

class MeuFilho extends StatefulWidget {
  final MeuFilhoController controller;

  MeuFilho({Key? key, required this.controller}) : super(key: key);

  @override
  _MeuFilhoState createState() => _MeuFilhoState();
}

class _MeuFilhoState extends State<MeuFilho> {
  Color _color = Colors.red;

  @override
  void initState() {
    super.initState();
    this.widget.controller.addListener(listenColorChange);
  }

  void listenColorChange() {
    _color = this.widget.controller.color;
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
