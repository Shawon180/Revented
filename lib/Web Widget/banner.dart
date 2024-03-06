import 'package:flutter/material.dart';

import '../const/const.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 581,
      decoration: BoxDecoration(color: kTitleColor, borderRadius: BorderRadius.circular(24)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Taste the Difference\nwith Locally Sourced\nIngredients",
                          style: kTextStyle.copyWith(fontSize: 48, fontWeight: FontWeight.bold, color: kWhite),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                child: Text("Explore Menu", style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 18)),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                              child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: kWhite,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        height: 55,
                        width: 210,
                        decoration: BoxDecoration(
                          color: const Color(0xff33123d),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 80,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: kWhite, width: 2),
                                            image: const DecorationImage(image: AssetImage("images/man.jpg"))),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: kWhite, width: 2),
                                            image: const DecorationImage(image: AssetImage("images/man.jpg"))),
                                      ),
                                    ),
                                    Positioned(
                                      left: 50,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: kWhite, width: 2),
                                            image: const DecorationImage(image: AssetImage("images/man.jpg"))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "3,500+ Rating",
                                    style: kTextStyle.copyWith(color: kWhite),
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/deliveryIcon.png"))),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Delivery to your doorstep",
                              style: kTextStyle.copyWith(color: kWhite),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/GenuineIcon.png"))),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "100% Genuine Product",
                              style: kTextStyle.copyWith(color: kWhite),
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Elevating Dining Experiences\nIndulge Your Senses.Crafting\nCulinary Memories",
                      style: kTextStyle.copyWith(color: kWhite, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "images/man.png",
                height: 493,
                width: 619,
              )),
        ],
      ),
    );
  }
}
