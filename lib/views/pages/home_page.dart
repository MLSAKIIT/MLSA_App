import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mlsa_app/views/pages/Qrcode_screen.dart';
import 'package:mlsa_app/views/pages/about_page.dart';
import 'package:mlsa_app/views/pages/coupons_page.dart';
import 'package:mlsa_app/views/pages/profile_page.dart';
import 'package:mlsa_app/views/widgets/blogs_list_widget.dart';
import 'package:mlsa_app/views/widgets/past_events_widget.dart';

import '../../constant/constants.dart';
import '../widgets/bottom_nav_bar.dart';
import 'event_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var verticalBlock = width / 100; // Get the vertical block size
    var horizontalBlock = height / 100; // Get the horizontal block size
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                  'assets/home_page_background.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: horizontalBlock * 2.5,
                  top: verticalBlock * 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/mlsa_logo.png',
                          width: width * 0.2,
                          height: height * 0.08,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(QrScreen());
                          },
                          child: SvgPicture.asset('assets/qr_icon.svg'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: headingText(
                        'Ongoing Event',
                        fontSize: verticalBlock * 5,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => EventPage());
                      },
                      child: Container(
                        width: width * 0.9,
                        height: height * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.grey[800],
                        ),

                        // TODO: Get data from api for ongoing event
                        child: Stack(
                          children: [
                            Positioned(
                              top: verticalBlock * 2.3,
                              left: horizontalBlock,
                              right: horizontalBlock,
                              child: SvgPicture.asset(
                                'assets/home_page_container_background.svg',
                              ),
                            ),
                            Positioned(
                              top: verticalBlock * 8.5,
                              left: horizontalBlock * 4,
                              child: headingText(
                                'Eye Spy Squid',
                                fontSize: height * 0.025,
                              ),
                            ),
                            Positioned(
                              top: verticalBlock * 17,
                              left: horizontalBlock * 4,
                              child: text(
                                'AI/ML',
                                fontSize: verticalBlock * 3.65,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Positioned(
                              top: verticalBlock * 26,
                              left: horizontalBlock * 3.9,
                              child: text(
                                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore',
                                fontSize: verticalBlock * 2.35,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Positioned(
                              top: verticalBlock * 10,
                              right: horizontalBlock * 4,
                              child: text(
                                '107 registered',
                                color: accentColor,
                                fontWeight: FontWeight.bold,
                                fontSize: verticalBlock * 3.3,
                              ),
                            ),
                            Positioned(
                              bottom: verticalBlock * 6.5,
                              right: horizontalBlock * 4,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: horizontalBlock * 2.5,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: accentColor),
                                  ),
                                ),
                                // TODO: Navigate to Register page
                                onPressed: () {
                                  Get.to(() => EventPage());
                                },
                                child: text(
                                  'Register',
                                  color: accentColor,
                                  fontSize: verticalBlock * 3.6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: verticalBlock * 5.2),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: headingText(
                        'Events Memories',
                        fontSize: verticalBlock * 5,
                      ),
                    ),
                    SizedBox(height: verticalBlock * 4.3),
                    ScrollablePastEvents(height: height * 0.13, width: width),
                    SizedBox(height: verticalBlock * 5.4),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: headingText(
                        'Our Blogs',
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: verticalBlock * 4.3),
                    ScrollableBlogsList(height: height * 0.15, width: width),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
