import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlsa_app/views/widgets/blogs_list_widget.dart';
import 'package:mlsa_app/views/widgets/past_events_widget.dart';

import '../../constant/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 23, top: 25),
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
                    // TODO: Implement navigate to QR screen
                    onTap: () {},
                    // TODO: Add QR code button
                    child: Image.asset(
                      'assets/mlsa_logo.png',
                      width: 70,
                      height: 70,
                    ),
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
                  fontSize: height * 0.025,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
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
                      top: verticalBlock * 7.5,
                      left: 35,
                      child: headingText(
                        'Eye Spy Squid',
                        fontSize: height * 0.025,
                      ),
                    ),
                    Positioned(
                      top: 68,
                      left: 35,
                      child: text(
                        'AI/ML',
                        fontSize: verticalBlock * 4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 35,
                      child: text(
                        'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore',
                        fontSize: 9,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 35,
                      child: text(
                        '107 registered',
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      right: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: accentColor),
                          ),
                        ),
                        onPressed: () {},
                        child: text('Register', color: accentColor),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: headingText(
                  'Events Memories',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ScrollablePastEvents(height: height * 0.13, width: width),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: headingText(
                  'Our Blogs',
                  fontSize: 20,
                ),
              ),
              ScrollableBlogsList(height: height * 0.15, width: width)
            ],
          ),
        ),
      ),
    );
  }
}
