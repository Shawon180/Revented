import 'package:flutter/material.dart';

import '../const/const.dart';

class GetQuestion extends StatefulWidget {
  const GetQuestion({Key? key}) : super(key: key);

  @override
  State<GetQuestion> createState() => _GetQuestionState();
}

class _GetQuestionState extends State<GetQuestion> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          backgroundColor: kTitleColor,
          tilePadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          childrenPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          textColor: kWhite,
          iconColor: kWhite,
          collapsedBackgroundColor: kContainerColor,
          title: const Text(
            'What payment methods do you accept',
            style: TextStyle(fontSize: 24),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down,
          ),
          children: <Widget>[
            ListTile(
                title: Text(
              'Yes, you can track your order using the tracking number provided in your order confirmation email. Alternatively, you can log in to your account on our website to view the status of your order.',
              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
            )),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          tilePadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          backgroundColor: kTitleColor,
          textColor: kWhite,
          iconColor: kWhite,
          collapsedBackgroundColor: kContainerColor,
          title: const Text(
            'Do you offer international shipping?',
            style: TextStyle(fontSize: 24),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down,
          ),
          children: <Widget>[
            ListTile(
                title: Text(
              'Yes, you can track your order using the tracking number provided in your order confirmation email. Alternatively, you can log in to your account on our website to view the status of your order.',
              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
            )),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          tilePadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          backgroundColor: kTitleColor,
          textColor: kWhite,
          iconColor: kWhite,
          collapsedBackgroundColor: kContainerColor,
          title: const Text(
            'What is your return policy?',
            style: TextStyle(fontSize: 24),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down,
          ),
          children: <Widget>[
            ListTile(
                title: Text(
              'Yes, you can track your order using the tracking number provided in your order confirmation email. Alternatively, you can log in to your account on our website to view the status of your order.',
              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
            )),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          tilePadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          backgroundColor: kTitleColor,
          textColor: kWhite,
          iconColor: kWhite,
          collapsedBackgroundColor: kContainerColor,
          title: const Text(
            'How do I contact Customer Support?',
            style: TextStyle(fontSize: 24),
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down,
          ),
          children: <Widget>[
            ListTile(
                title: Text(
              'Yes, you can track your order using the tracking number provided in your order confirmation email. Alternatively, you can log in to your account on our website to view the status of your order.',
              style: kTextStyle.copyWith(color: kWhite, fontSize: 18),
            )),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
      ],
    );
  }
}
