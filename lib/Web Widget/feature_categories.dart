import 'package:flutter/material.dart';

import '../const/const.dart';

class FeatureCategories extends StatefulWidget {
  const FeatureCategories({Key? key}) : super(key: key);

  @override
  State<FeatureCategories> createState() => _FeatureCategoriesState();
}

class _FeatureCategoriesState extends State<FeatureCategories> {
  List<String> foodImage = ["images/set-menu.png", "images/hot-item.png", "images/burger.png", "images/Biryani.png", "images/Drinks.png", "images/Pizza.png"];
  List<String> foodName = ["Set Menu", "Hot Item", "Burger", "Biryani", "Drinks", "Pizza"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: ListView.builder(
              itemCount: foodImage.length,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    width: 180,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: kContainerColor,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          foodImage[index],
                          width: 73,
                          height: 63,
                        ),
                        Text(
                          foodName[index],
                          style: kTextStyle.copyWith(fontSize: 20, color: kTitleColor),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 50,
        ),
        FittedBox(
          fit: BoxFit.cover,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 300,
                  width: 380,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xffFFEB68),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Amazing Buy\n2 Pizza Get 1",
                                  style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 24),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Order Now",
                                        style: kTextStyle.copyWith(
                                          color: kTitleColor,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Start from",
                                  style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                  ),
                                ),
                                Text(
                                  "\$299.00",
                                  style: kTextStyle.copyWith(color: kTitleColor, fontSize: 28, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 230,
                            height: 200,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(24)),
                                image: DecorationImage(image: AssetImage('images/Pizza2.png'), fit: BoxFit.cover)),
                          ))
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 300,
                  width: 380,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xffA1E1E1),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Delicious Burger\nThe Weekend",
                                  style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 24),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Order Now",
                                        style: kTextStyle.copyWith(
                                          color: kTitleColor,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Up to",
                                  style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                  ),
                                ),
                                Text(
                                  "50% Off",
                                  style: kTextStyle.copyWith(color: kTitleColor, fontSize: 28, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 230,
                            height: 200,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(24)),
                                image: DecorationImage(image: AssetImage('images/burger2.png'), fit: BoxFit.cover)),
                          ))
                    ],
                  ),
                ),
              ),

              Container(
                height: 300,
                width: 380,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xffFEC091),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Try our Delicious\nItalian Food",
                                style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order Now",
                                      style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Up to",
                                style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                ),
                              ),
                              Text(
                                "10% Off",
                                style: kTextStyle.copyWith(color: kTitleColor, fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 230,
                          height: 200,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(24)),
                              image: DecorationImage(image: AssetImage('images/italian-food.png'), fit: BoxFit.cover)),
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
