import 'package:flutter/material.dart';
import 'package:grocery_store/widget/home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: Image.asset("assets/images/header_app_icon.png"),
        ),
      ),
      body: HomeWidget(),
    );
  }
}
