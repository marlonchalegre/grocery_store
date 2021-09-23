import 'package:flutter/material.dart';

import 'package:grocery_store/model/offer.dart';
import 'package:grocery_store/page/offer_detail.dart';
import 'package:grocery_store/util/colors.dart';

class OfferWidget extends StatelessWidget {
  final Offer offer;

  const OfferWidget({
    Key? key,
    required this.offer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: GroceryColors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    _goToDetailPage(context, offer);
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(offer.imagePath),
                  ),
                ),
              ),
              Text(
                offer.name,
                style: _textH1Style(),
              ),
              Text(
                offer.description,
                style: _textH2Style(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ " + offer.price.toString(), style: _textH1Style()),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "+",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(GroceryColors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: GroceryColors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToDetailPage(BuildContext context, Offer offer) {
    Navigator.pushNamed(context, '/offerDetail', arguments: offer);
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return OfferDetail(offer: offer);
    //     },
    //   ),
    // );
  }

  TextStyle _textH2Style() {
    return TextStyle(
      color: GroceryColors.darkGrey,
      fontSize: 14,
    );
  }

  TextStyle _textH1Style() {
    return TextStyle(
        color: GroceryColors.blackThatsNotBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600);
  }
}
