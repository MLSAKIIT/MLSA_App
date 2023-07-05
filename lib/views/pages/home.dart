import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlsa_app/controller/controller.dart';
import 'package:mlsa_app/views/pages/about_page.dart';
import 'package:mlsa_app/views/pages/coupons_page.dart';
import 'package:mlsa_app/views/pages/home_page.dart';
import 'package:mlsa_app/views/pages/profile_page.dart';
import 'package:mlsa_app/views/widgets/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  Home({super.key});
  var controller = Get.put(Controller());

  final List<Widget> pages = [
    const HomePage(),
    const CouponsPage(),
    AboutPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Obx(() => pages[Controller.pageControllerIndex.value]),
      ),
    );
  }
}
