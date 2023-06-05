import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constants.dart';
import '../../controller/controller.dart';
import '../pages/about_page.dart';
import '../pages/coupons_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({super.key});
  var pageController = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[900],
      selectedItemColor: accentColor,
      currentIndex: pageController.pageControllerIndex.value,
      unselectedItemColor: Colors.white,
      onTap: (index) {
        switch (index) {
          case 0:
            Get.to(() => HomePage());
            pageController.pageControllerIndex.value = 0;
            break;
          case 1:
            Get.to(() => CouponsPage());
            pageController.pageControllerIndex.value = 1;
            break;
          case 2:
            Get.to(() => AboutPage());
            pageController.pageControllerIndex.value = 2;
            break;

          case 3:
            Get.to(() => ProfilePage());
            pageController.pageControllerIndex.value = 3;
        }
      },
      // type: BottomNavigationBarType.shifting,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard), label: 'Coupons'),
        BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'About'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
