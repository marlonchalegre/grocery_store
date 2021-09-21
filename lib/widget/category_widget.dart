import 'package:flutter/material.dart';
import 'package:grocery_store/util/colors.dart';

class CategoryWidget extends StatelessWidget {
  final String path;
  final String name;
  final Color borderColor;
  final Color backgroundColor;

  const CategoryWidget({
    Key? key,
    required this.path,
    required this.name,
    required this.borderColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        border: Border.all(color: this.borderColor, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(this.path),
          Text(
            this.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: GroceryColors.blackThatsNotBlack,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
