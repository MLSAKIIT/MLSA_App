import 'package:flutter/material.dart';
import 'package:mlsa_app/views/widgets/past_events_widget.dart';

import '../../constant/constants.dart';
import '../widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var verticalBlock = width / 423; // Get the vertical block size
    var horizontalBlock = height / 997; // Get the horizontal block size
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: Stack(
          children: [
            // Container(
            //   width: horizontalBlock * 185,
            //   height: verticalBlock * 185,
            //   decoration: const ShapeDecoration(
            //     color: Color(0xCE4AE9FC),
            //     shape: OvalBorder(),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(
                  left: horizontalBlock * 20, top: verticalBlock * 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: horizontalBlock * 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/mlsa_logo.png',
                          height: verticalBlock * 45,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: verticalBlock * 20,
                        ),
                        // Icon(Icons.qr_code_sharp, color: Colors.white, size: 24),
                        /// TODO: Change to QR code
                        Image.asset(
                          'assets/qr_code_homepage.png',
                          height: verticalBlock * 24,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: verticalBlock * 32),
                  text(
                    'Ongoing Event',
                    color: Colors.white,
                    fontSize: verticalBlock * 20,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: verticalBlock * 21),
                  Padding(
                    padding: EdgeInsets.only(right: horizontalBlock * 20),
                    child: Container(
                      height: verticalBlock * 157,
                      padding: EdgeInsets.only(
                        left: horizontalBlock * 13,
                        top: verticalBlock * 10,
                        right: verticalBlock * 10,
                        bottom: verticalBlock * 11,
                      ),
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: const Alignment(1.00, 0.00),
                          end: const Alignment(-1, 0),
                          colors: [
                            Colors.white.withOpacity(0.05000000074505806),
                            const Color(0x752FF7F7)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF81ECFC)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  headingText(
                                    'Eye Spy Squid',
                                    fontSize: 20,
                                  ),
                                  SizedBox(height: verticalBlock * 2),
                                  text(
                                    'AI/ML',
                                    fontSize: 15,
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: verticalBlock * 25),
                                  SizedBox(
                                    width: horizontalBlock * 220,
                                    child: text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                                      color: Colors.white,
                                      fontSize: verticalBlock * 10,
                                      fontWeight: FontWeight.w300,
                                      // textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  text(
                                    '107 registered',
                                    fontSize: verticalBlock * 11,
                                    fontWeight: FontWeight.w500,
                                    color: accentColor,
                                  ),
                                  SizedBox(height: verticalBlock * 81),
                                  InkWell(
                                    onTap: () {
                                      // Get.to(() => EventDetails());
                                    },
                                    child: Container(
                                      height: verticalBlock * 32,
                                      width: horizontalBlock * 102,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1, color: accentColor),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: text(
                                          'Register',
                                          fontSize: verticalBlock * 13,
                                          fontWeight: FontWeight.w400,
                                          color: accentColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: verticalBlock * 31),
                  text(
                    'Events Memories',
                    color: Colors.white,
                    fontSize: verticalBlock * 20,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: verticalBlock * 20),
                  SizedBox(
                    height: verticalBlock * 110,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return PastEventsWidget(
                            height: verticalBlock * 109,
                            width: horizontalBlock * 214,
                            assetName: homePageEventsAssetList[index],
                            eventName: homePageEventsNameList[index],
                          );
                        }),
                  ),
                  SizedBox(height: verticalBlock * 30),
                  text('Our blogs',
                      fontSize: verticalBlock * 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  SizedBox(height: verticalBlock * 20),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
