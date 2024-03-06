import 'package:flutter/material.dart';

import '../const/const.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 200,
              width: 380,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffFFEB68),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Discount\nVoucher in Shop",
                        style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: kTitleColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                              child: Icon(
                                Icons.arrow_forward,
                                color: kWhite,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/discount-voucher.png"))),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: 200,
              width: 380,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xfffec091),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fresh\nHealthy Food",
                        style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: kTitleColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                              child: Icon(
                                Icons.arrow_forward,
                                color: kWhite,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/organic-food.png"))),
                  )
                ],
              ),
            ),
          ),

          Container(
            height: 200,
            width: 380,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffFFD5F0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fast\nHome Delivery",
                      style: kTextStyle.copyWith(
                        color: kTitleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: kTitleColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                            child: Icon(
                              Icons.arrow_forward,
                              color: kWhite,
                            )),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "images/delivery-truck.png",
                  ))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
