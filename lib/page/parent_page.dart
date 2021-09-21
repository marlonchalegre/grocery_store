import 'package:flutter/material.dart';
import 'package:grocery_store/controllers/son_controller.dart';
import 'package:grocery_store/widget/son_widget.dart';

class MeuPai extends StatelessWidget {
  const MeuPai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MeuFilhoController _controller = MeuFilhoController();
    int count = 1;
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MeuFilho(
            controller: _controller,
          ),
          ElevatedButton(
            onPressed: () {
              count++;
              _controller.color = count % 2 == 0 ? Colors.blue : Colors.red;
            },
            child: Text('Muda a cor danado!'),
          ),
        ],
      )),
    );
  }
}
