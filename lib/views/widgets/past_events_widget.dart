import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';

class PastEventsWidget extends StatelessWidget {
  const PastEventsWidget({
    super.key,
    // required this.height,
    // required this.width,
    required this.assetName,
    required this.eventName,
  });

  // final double height;
  // final double width;
  final String assetName;
  final String eventName;

  @override
  Widget build(BuildContext context) {
    final double verticalBlock = MediaQuery.of(context).size.height / 997;
    final double horizontalBlock = MediaQuery.of(context).size.width / 423;
    return Stack(
      children: [
        SizedBox(
          width: horizontalBlock * 214,
          height: verticalBlock * 115,
          child: Image.asset(
            assetName,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: horizontalBlock * 12,
            bottom: verticalBlock * 10,
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: text(
              eventName,
              fontSize: verticalBlock * 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
