import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/controllers/son_controller.dart';
import 'package:grocery_store/widget/son_widget.dart';

class MeuPai extends StatefulWidget {
  const MeuPai({Key? key}) : super(key: key);

  @override
  _MeuPaiState createState() => _MeuPaiState();
}

class _MeuPaiState extends State<MeuPai> {
  int count = 1;
  String buttonColor = "";

  @override
  void initState() {
    super.initState();
    buttonColor = "Vermelho";
  }

  @override
  Widget build(BuildContext context) {
    final MeuFilhoController _controller = MeuFilhoController();

    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MeuFilho(
            controller: _controller,
            onColorChanged: (txt) {
              print("Muda para $txt");
              // buttonColor = txt;
              setState(() {
                buttonColor = txt;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              showMyDialog(context);
            },
            child: Text('Muda a cor para $buttonColor!'),
          ),
        ],
      )),
    );
  }

  void showMyDialog(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.lightBlue,
      builder: (context) => AlertDialog(
        title: Text("Título do Alerta"),
        content: Text("Conteudo"),
        actions: [
          TextButton(
            onPressed: () => apertouSim(),
            child: Text("Sim"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Não"),
          )
        ],
      ),
    );
  }

  apertouSim() {
    print("Sim");
    Navigator.pop(context);
  }
}
