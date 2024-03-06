import 'package:flutter/material.dart';

import '../const/const.dart';

class FooterMenu extends StatefulWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kTitleColor,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: SizedBox(
              width:1170,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/logo.png",
                            width: 46,
                            height: 35,
                            color: kWhite,
                          ),
                          Text(
                            "revented",
                            style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Elevating Dining Experiences. Indulge Your Senses.\nCrafting Culinary Memories. ",
                        style: kTextStyle.copyWith(color: kWhite),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Navigation",
                                  style: kTextStyle.copyWith(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "About",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Food Category",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Partner ",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "FAQ ",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Food Category",
                                  style: kTextStyle.copyWith(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Vegetable Original",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Vegetable Sea Food",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Vegetable Fruit Food ",
                                  style: kTextStyle.copyWith(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Subscribe",
                                style: kTextStyle.copyWith(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "our news later",
                                style: kTextStyle.copyWith(
                                  color: kWhite,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextFormField(
                                  controller: searchController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      floatingLabelAlignment: FloatingLabelAlignment.center,
                                      suffixIcon: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPrimaryColor,
                                          ),
                                          child: const Icon(
                                            Icons.search,
                                            color: kWhite,
                                          )),
                                      border: InputBorder.none,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),
                                      fillColor: kWhite,
                                      filled: true),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Privacy Policy",
                              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Terms and Condition",
                              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color(0xff3D1B48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "@ Copyright 2023, All Rights Reserved",
                    style: kTextStyle.copyWith(color: kWhite,fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
