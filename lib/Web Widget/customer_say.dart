import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../const/const.dart';

class CustomerSays extends StatefulWidget {
  const CustomerSays({Key? key}) : super(key: key);

  @override
  State<CustomerSays> createState() => _CustomerSaysState();
}

class _CustomerSaysState extends State<CustomerSays> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 275,
                decoration: BoxDecoration(
                  color: kContainerColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our holiday season used to be a logistical nightmare.",
                        style: kTextStyle.copyWith(color: kTitleColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "“ XYZ Inventory Management turned it into a breeze. We had the right products in stock, and our customers received their orders promptly. The difference was significant.”",
                        style: kTextStyle.copyWith(
                          color: kTitleColor,
                          fontSize: 18,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), border: Border.all(color: kPrimaryColor, width: 1)),
                              child: const Icon(
                                Icons.star_rounded,
                                color: kPrimaryColor,
                                size: 10,
                              ),
                            ),
                            onRatingUpdate: (rating) {
                              if (kDebugMode) {
                                print(rating);
                              }
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Don Norman",
                            style: kTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: kSubTitleColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
