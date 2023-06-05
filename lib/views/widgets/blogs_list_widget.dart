import 'package:flutter/material.dart';

class ScrollableBlogsList extends StatelessWidget {
  const ScrollableBlogsList(
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
