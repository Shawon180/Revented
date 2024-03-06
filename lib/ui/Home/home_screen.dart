
import 'package:flutter/material.dart';

import '../../const/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  String dropdownValue = list.first;
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
  List<String> foodNames = [
    "Grilled chicken with vegetables",
    "Vegetable salad on white plate",
    "Vegetable Original In Sea Food",
    "Vegetable Original In Sea Food"
  ];
  static const List<String> list = <String>['Dhaka', 'One', 'Three', 'Four'];
  List<String> foodImage = ["images/set-menu.png", "images/hot-item.png", "images/burger.png", "images/Biryani.png", "images/Drinks.png", "images/Pizza.png"];
  List<String> foodName = ["Set Menu", "Hot Item", "Burger", "Biryani", "Drinks", "Pizza"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: kWhite, width: 2),
                image: const DecorationImage(image: AssetImage("images/man.jpg"), fit: BoxFit.cover)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Location",
              style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 14),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: DropdownButton<String>(
                padding: EdgeInsets.zero,
                isDense: true,
                value: dropdownValue,
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: kTitleColor,
                ),
                elevation: 1,
                style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16),
                underline: Container(
                  height: 0,
                  color: Colors.transparent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: kWhite),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: kTitleColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search food  and every thing",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kSubTitleColor,
                      ),
                      hintStyle: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 13),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: kPrimaryColor,
                            ),
                            child: const Icon(
                              Icons.filter_list_alt,
                              color: kWhite,
                            )),
                      ),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      fillColor: kWhite,
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Feature Categories",
                style: kTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: kTitleColor),
              ),
            ),
            SizedBox(
              height: 73,
              child: ListView.builder(
                  itemCount: foodImage.length,
                  padding: const EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: kWhite,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              foodImage[index],
                              width: 42,
                              height: 42,
                            ),
                          ),
                          Text(
                            foodName[index],
                            style: kTextStyle.copyWith(color: kTitleColor),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                  itemCount: 3,
                  padding: const EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 160,
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(image: AssetImage('images/discount-image.png'),),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Delicious",
                                    style: kTextStyle.copyWith(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  Text(
                                    "Food this weekend only",
                                    style: kTextStyle.copyWith(color: kWhite, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: kWhite),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "Order Now",
                                              style: kTextStyle.copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: kPrimaryColor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                  itemCount: img.length,
                  padding: const EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kWhite,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: MediaQuery.of(context).size.width / 1.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kContainerColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5.0, right: 10),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        img[index],
                                        width: 130,
                                      ),
                                      Positioned(
                                        top: 5,
                                        right: 5,
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
                                ),
                              ),
                            ),
                            Padding(
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
                                        style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 10),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star_rounded,
                                            color: Colors.orange,
                                            size: 16,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "(4.5)",
                                            style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    foodNames[index],
                                    style: kTextStyle.copyWith(
                                      color: kTitleColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '\$80.00',
                                              style: kTextStyle.copyWith(
                                                color: kSubTitleColor,
                                                fontSize: 10,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' \$64.00',
                                              style: kTextStyle.copyWith(
                                                color: kTitleColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                            child: Icon(
                                              Icons.shopping_cart_outlined,
                                              color: kWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Regular Food",
                    style: kTextStyle.copyWith(fontWeight: FontWeight.bold, color: kTitleColor, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See More",
                      style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: LayoutBuilder(
                builder:(BuildContext context, BoxConstraints constraints){
                  if(constraints.maxWidth > 650){
                   return GridView.builder(
                       itemCount: img.length,
                       shrinkWrap: true,
                       gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                         crossAxisSpacing: 10,
                         mainAxisExtent: 100,

                         mainAxisSpacing: 10, ),
                       itemBuilder: (_, index) {
                         return Expanded(
                           child: Card(
                             elevation: 0,
                             color: kWhite,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Stack(
                                       children: [
                                         Container(
                                           height: 100,
                                           width: 90,
                                           alignment: Alignment.center,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(20),
                                             color: kContainerColor,
                                           ),
                                           child: Image.asset(
                                             img[index],
                                             width: 60,
                                             height: 60,
                                             fit: BoxFit.cover,
                                           ),
                                         ),
                                         Positioned(
                                           top: 5,
                                           right: 5,
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
                                                         ? const Icon(
                                                       Icons.favorite_outline_rounded,
                                                       size: 10,
                                                     )
                                                         : const Icon(
                                                       Icons.favorite,
                                                       color: kPrimaryColor,
                                                       size: 10,
                                                     ))),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                                         "Vegetable Original",
                                         style: kTextStyle.copyWith(
                                           color: kTitleColor,
                                           fontSize: 16,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                       const SizedBox(
                                         height: 10,
                                       ),
                                       RichText(
                                         text: TextSpan(
                                           children: <TextSpan>[
                                             TextSpan(
                                               text: '\$80.00',
                                               style: kTextStyle.copyWith(
                                                 color: kSubTitleColor,
                                                 fontSize: 10,
                                                 decoration: TextDecoration.lineThrough,
                                               ),
                                             ),
                                             TextSpan(
                                               text: ' \$64.00',
                                               style: kTextStyle.copyWith(
                                                 color: kTitleColor,
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                       Row(
                                         children: [
                                           const Icon(
                                             Icons.star_rounded,
                                             color: Colors.orange,
                                             size: 20,
                                           ),
                                           const SizedBox(
                                             width: 4,
                                           ),
                                           Text(
                                             "(4.5)",
                                             style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 12),
                                           )
                                         ],
                                       ),
                                     ],
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 30.0),
                                     child: InkWell(
                                       onTap: () {},
                                       child: Container(
                                         decoration: const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                                         child: const Padding(
                                           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                           child: Icon(
                                             Icons.shopping_cart_outlined,
                                             color: kWhite,
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         );
                       });
                  }else{
                    return ListView.builder(
                        itemCount: img.length,
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return FittedBox(
                            fit: BoxFit.cover,
                            child: Card(
                              color: kWhite,
                              elevation: 0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 80,
                                            width: 90,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: kContainerColor,
                                            ),
                                            child: Image.asset(
                                              img[index],
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            top: 5,
                                            right: 5,
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
                                                          ? const Icon(
                                                        Icons.favorite_outline_rounded,
                                                        size: 10,
                                                      )
                                                          : const Icon(
                                                        Icons.favorite,
                                                        color: kPrimaryColor,
                                                        size: 10,
                                                      ))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Vegetable Original",
                                          style: kTextStyle.copyWith(
                                            color: kTitleColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '\$80.00',
                                                style: kTextStyle.copyWith(
                                                  color: kSubTitleColor,
                                                  fontSize: 10,
                                                  decoration: TextDecoration.lineThrough,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' \$64.00',
                                                style: kTextStyle.copyWith(
                                                  color: kTitleColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star_rounded,
                                              color: Colors.orange,
                                              size: 20,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "(4.5)",
                                              style: kTextStyle.copyWith(color: kSubTitleColor, fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                            child: Icon(
                                              Icons.shopping_cart_outlined,
                                              color: kWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  }

                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
