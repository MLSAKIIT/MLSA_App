import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';

class ScrollablePastEvents extends StatelessWidget {
  const ScrollablePastEvents(
      {Key? key, required this.height, required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    // TODO: Implement scrollable past events from api
    return SizedBox(
        height: height,
        width: width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: height * 0.9,
              width: width * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/mlsa_logo_big.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: height * 0.9,
              width: width * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/mlsa_logo_big.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: height * 0.9,
              width: width * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/mlsa_logo_big.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class PastEventsWidget extends StatelessWidget {
  const PastEventsWidget({
    super.key,
    required this.height,
    required this.width,
    required this.assetName,
    required this.eventName,
  });

  final double height;
  final double width;
  final String assetName;
  final String eventName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          SizedBox(
            width: width,
            height: height,
            child: Image.asset(assetName),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * (12 / 214),
              bottom: height * (10 / 109),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: text(
                eventName,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ]),
        SizedBox(
          width: width * (8 / 109),
        ),
      ],
    );
  }
}
