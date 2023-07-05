import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constant/constants.dart';
import '../../controller/controller.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final int _currentGradientIndex = 0;

  Image gradient = Image.asset("assets/nav_radient.png");

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(gradient.image, context);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    double iconHeight = w * 0.06;
    double navBarHeight = h * 0.065;
    double iconGap = w * 0.2;
    return Container(
      height: navBarHeight,
      width: w,
      decoration: BoxDecoration(
        color: Colors.grey[900],
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left:
                  (iconGap + iconHeight) * Controller.pageControllerIndex.value,
              child: Padding(
                padding: EdgeInsets.only(left: (w * 0.03) / 2),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: h * 0.1,
                    width: h * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          HexColor('59DDF6').withOpacity(0.5),
                          HexColor('59DDF6').withOpacity(0.05),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: navBarHeight / 4),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: w * 0.08,
                  ),
                  InkWell(
                    onTap: () async {
                      Controller.pageControllerIndex.value = 0;
                      await _animationController.animateTo(
                          Controller.pageControllerIndex.value.toDouble());
                    },
                    child: Icon(
                      Icons.home,
                      size: iconHeight,
                      color: Controller.pageControllerIndex.value == 0
                          ? navBarIconColor
                          : white,
                    ),
                  ),
                  SizedBox(
                    width: iconGap,
                  ),
                  InkWell(
                    onTap: () async {
                      Controller.pageControllerIndex.value = 1;
                      await _animationController.animateTo(
                          Controller.pageControllerIndex.value.toDouble());
                    },
                    child: Icon(
                      Icons.card_giftcard,
                      size: iconHeight,
                      color: Controller.pageControllerIndex.value == 1
                          ? navBarIconColor
                          : white,
                    ),
                  ),
                  SizedBox(
                    width: iconGap,
                  ),
                  InkWell(
                    onTap: () async {
                      Controller.pageControllerIndex.value = 2;
                      await _animationController.animateTo(
                          Controller.pageControllerIndex.value.toDouble());
                    },
                    child: Icon(
                      Icons.info_outline,
                      size: iconHeight,
                      color: Controller.pageControllerIndex.value == 2
                          ? navBarIconColor
                          : white,
                    ),
                  ),
                  SizedBox(
                    width: iconGap,
                  ),
                  InkWell(
                    onTap: () async {
                      Controller.pageControllerIndex.value = 3;
                      await _animationController.animateTo(
                          Controller.pageControllerIndex.value.toDouble());
                    },
                    child: Icon(
                      Icons.person,
                      size: iconHeight,
                      color: Controller.pageControllerIndex.value == 3
                          ? navBarIconColor
                          : white,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.08,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
