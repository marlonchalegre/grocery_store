import 'package:flutter/material.dart';
import 'package:grocery_store/model/offer.dart';
import 'package:grocery_store/util/colors.dart';

class OfferDetail extends StatefulWidget {
  final Offer offer;
  OfferDetail({Key? key, required this.offer}) : super(key: key);

  @override
  _OfferDetailState createState() => _OfferDetailState();
}

class _OfferDetailState extends State<OfferDetail> {
  final _controller = new TextEditingController();

  var count = 1;
  num totalCost = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: GroceryColors.blackThatsNotBlack,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: Image.asset("assets/images/header_app_icon.png"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(this.widget.offer.name),
                Icon(
                  Icons.add_moderator_rounded,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Text(this.widget.offer.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (count > 1) {
                              count -= 1;
                              totalCost = count * this.widget.offer.price;
                            }
                          });
                        },
                        child: Text("-", style: TextStyle(fontSize: 40)),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Text("$count"),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            count += 1;
                            totalCost = count * this.widget.offer.price;
                          });
                          _controller.text = count.toString();
                        },
                        child: Text("+", style: TextStyle(fontSize: 30)),
                      ),
                    ],
                  ),
                ),
                Text("\$ $totalCost")
              ],
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder textFieldDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: Colors.white,
        width: 0,
      ),
    );
  }
}
