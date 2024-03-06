import 'package:flutter/material.dart';

import '../const/const.dart';

class TodayOffer extends StatefulWidget {
  const TodayOffer({Key? key}) : super(key: key);

  @override
  State<TodayOffer> createState() => _TodayOfferState();
}

class _TodayOfferState extends State<TodayOffer> {
  bool isSelected = true;
  void changeButton() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  List<String> img = [
    "images/grilled-chicken.png",
    "images/vegetable-salad.png",
    "images/vegetable-salad.png",
    "images/sea_food.png",
  ];
  List<String> foodName = [
    "Grilled chicken\nwith vegetables",
    "Vegetable salad\non white plate",
    "Vegetable Original\nIn Sea Food",
    "Vegetable Original\nIn Sea Food"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 442,
      child: ListView.builder(
          itemCount: img.length,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: 275,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kContainerColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFFEB68), borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "20% OFF",
                                style: kTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 15),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: kWhite,
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                                onTap: () => changeButton(),
                                child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: isSelected
                                        ? const Icon(Icons.favorite_outline_rounded)
                                        : const Icon(
                                            Icons.favorite,
                                            color: kPrimaryColor,
                                          ))),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      img[index],
                      width: 200,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: kWhite),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Original Vegetable",
                                    style: kTextStyle.copyWith(color: kSubTitleColor),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        color: Colors.orange,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "(4.5)",
                                        style: kTextStyle.copyWith(color: kSubTitleColor),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                foodName[index],
                                style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), border: Border.all(width: 1, color: kPrimaryColor)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.add,
                                              color: kPrimaryColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Add to Cart",
                                              style: kTextStyle.copyWith(color: kPrimaryColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '\$80.00',
                                            style: kTextStyle.copyWith(
                                              color: Colors.grey,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' \$64.00',
                                            style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
