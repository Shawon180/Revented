import 'package:efood/const/const.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Web Widget/banner.dart';
import '../Web Widget/customer_say.dart';
import '../Web Widget/feature_categories.dart';
import '../Web Widget/footer_menu.dart';
import '../Web Widget/get_question.dart';
import '../Web Widget/offers.dart';
import '../Web Widget/our_regular_food.dart';
import '../Web Widget/today_offer.dart';
import 'Home/home_screen.dart';
import 'nav_bar_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder:(BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1100) {
            return DefaultTabController(
              length: 4,
      
              child: Scaffold(
                backgroundColor: kWhite,
                appBar: AppBar(
                  elevation: 0,
                  centerTitle: true,
                  title: FittedBox(
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "images/LogoIcons.png",
                            width: 172,
                            height: 35,
                          ),
                          SizedBox(
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Home",
                                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Menu",
                                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "About US",
                                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Blog",
                                    style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            height: 40,
                            child: TextFormField(
                              controller: searchController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  isDense: true,
                                  floatingLabelAlignment: FloatingLabelAlignment.center,
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kPrimaryColor,
                                        ),
                                        child: const Icon(
                                          Icons.search,
                                          color: kWhite,
                                        )),
                                  ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite_border,
                                      color: kTitleColor,
                                    ),
                                    Text(
                                      "Favorite",
                                      style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: kTitleColor,
                                    ),
                                    Text(
                                      "Cart",
                                      style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.person_outline,
                                      color: kTitleColor,
                                    ),
                                    Text(
                                      "Log In",
                                      style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                body:_wevView(),
              ),
            );
          } else {
            return Container(
              child: NavHomeScreen(),
            );
          }
        },
      ),
    );
  }
}
Widget _wevView(){
  return SingleChildScrollView(
    child: Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: 1170,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BannerScreen(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Offers(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today best dishes\nfor you!",
                            style: kTextStyle.copyWith(fontSize: 42, fontWeight: FontWeight.bold, color: kTitleColor),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "See All Product",
                                  style: kTextStyle.copyWith(color: kPrimaryColor, fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: kPrimaryColor,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const TodayOffer(),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Feature Categories",
                          style: kTextStyle.copyWith(fontSize: 42, fontWeight: FontWeight.bold, color: kTitleColor),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "See All",
                                style: kTextStyle.copyWith(color: kPrimaryColor, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: kPrimaryColor,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FeatureCategories(),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Regular Food",
                          style: kTextStyle.copyWith(fontSize: 42, fontWeight: FontWeight.bold, color: kTitleColor),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "See All Product",
                                style: kTextStyle.copyWith(color: kPrimaryColor, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: kPrimaryColor,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const OurRegularFood(),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "What Our Customer Says",
                              style: kTextStyle.copyWith(fontSize: 42, fontWeight: FontWeight.bold, color: kTitleColor),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
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
                                  "480 Review",
                                  style: kTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: kTitleColor),
                                ),
                              ],
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Next",
                                style: kTextStyle.copyWith(color: kPrimaryColor, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                color: kPrimaryColor,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const CustomerSays(),
                    const SizedBox(
                      height: 50,
                    ),
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 450,
                            width: 575,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color(0xffA0E1E1),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(28.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: kTitleColor,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Image.asset(
                                                    "images/delivery-truck.png",
                                                    width: 24,
                                                    height: 24,
                                                    color: kWhite,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  Text(
                                                    'Delivery',
                                                    style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Enjoy Free\nDelivery Within\n2 hours",
                                            style: kTextStyle.copyWith(fontSize: 28, color: kTitleColor, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                              child: Text("Order Now", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 18)),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(color: kWhite, shape: BoxShape.circle),
                                              child: const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                  child: Icon(
                                                    Icons.arrow_forward,
                                                    color: kTitleColor,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child: Image.asset(
                                      "images/deliveryman.png",
                                      width: 350,
                                      height: 400,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            height: 450,
                            width: 575,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color(0xffFFEB68),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(28.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: kTitleColor,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Image.asset(
                                                    "images/credit-card.png",
                                                    width: 24,
                                                    height: 24,
                                                    color: kWhite,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  Text(
                                                    'Master Card',
                                                    style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "You Can Enjoy a 5%\nDiscount using a our card\npayment",
                                            style: kTextStyle.copyWith(fontSize: 28, color: kTitleColor, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                              child: Text("Order Now", style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 18)),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(color: kWhite, shape: BoxShape.circle),
                                              child: const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                  child: Icon(
                                                    Icons.arrow_forward,
                                                    color: kTitleColor,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: -100,
                                    right: 15,
                                    child: Image.asset(
                                      "images/master-card.png",
                                      width: 300,
                                      height: 400,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color(0xffFEC091),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Do you any help or order process and delivery issue?",
                                  style: kTextStyle.copyWith(fontSize: 28, fontWeight: FontWeight.bold, color: kTitleColor),
                                ),
                                Text(
                                  "Service we provide 24 hours",
                                  style: kTextStyle.copyWith(color: kTitleColor),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(color: kTitleColor, shape: BoxShape.circle),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                      child: Image.asset(
                                        "images/telephone.png",
                                        width: 24,
                                        height: 24,
                                      )),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: kTitleColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: Text("+880163214545",
                                        style: kTextStyle.copyWith(
                                          color: kWhite,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text("Got Questions", style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 42)),
                    const SizedBox(
                      height: 40,
                    ),

                    const GetQuestion(),

                    const SizedBox(
                      height: 50,
                    ),
                    //mobile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Download our\nFood App For Easy\nAccess All",
                              style: kTextStyle.copyWith(fontSize: 42, color: kTitleColor, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Experience hassle-free Food Delivery\nwith online Food Taste",
                              style: kTextStyle.copyWith(
                                color: kTitleColor,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kTitleColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            "images/app-store.png",
                                            width: 38,
                                            height: 38,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Downloads for",
                                                  style: kTextStyle.copyWith(
                                                    color: kWhite,
                                                  )),
                                              Text("App Store", style: kTextStyle.copyWith(color: kWhite, fontSize: 18)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: kTitleColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            "images/play-store.png",
                                            width: 38,
                                            height: 38,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Downloads for",
                                                  style: kTextStyle.copyWith(
                                                    color: kWhite,
                                                  )),
                                              Text("Google Play", style: kTextStyle.copyWith(color: kWhite, fontSize: 18)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/hand-phone.png",
                          height: 600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          FooterMenu()
        ],
      ),
    ),
  );
}

Widget _mobileView(){
  return Container();
}