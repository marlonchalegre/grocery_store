import 'package:flutter/material.dart';
import 'package:grocery_store/model/offer.dart';
import 'package:grocery_store/util/colors.dart';

class OfferDetail extends StatefulWidget {
  OfferDetail({Key? key}) : super(key: key);

  @override
  _OfferDetailState createState() => _OfferDetailState();
}

class _OfferDetailState extends State<OfferDetail> {
  final _controller = new TextEditingController();

  var count = 1;
  num totalCost = 0;

  @override
  void initState() {
    super.initState();
    // totalCost = 0;
    _controller.text = "1";
  }

  @override
  Widget build(BuildContext context) {
    final Offer offer = ModalRoute.of(context)!.settings.arguments as Offer;
    // totalCost = offer.price;
    //setState(() {});

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: GroceryColors.blackThatsNotBlack,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            child: Image.asset("assets/images/header_app_icon.png"),
          ),
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
                Text(offer.name),
                Icon(
                  Icons.add_moderator_rounded,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Text(offer.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          if (count > 1) {
                            count -= 1;
                            totalCost = count * offer.price;
                          }
                          _controller.text = count.toString();
                          setState(() {});
                        },
                        child: Text("-", style: TextStyle(fontSize: 40)),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: TextField(
                          controller: _controller,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          count += 1;
                          totalCost = count * offer.price;
                          _controller.text = count.toString();
                          setState(() {});
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
