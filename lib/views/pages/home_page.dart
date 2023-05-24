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
                    width: 70,
                    height: 70,
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: headingText(
                  'Ongoing Event',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.grey[800],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 13,
                      left: 7,
                      child: SvgPicture.asset(
                        'assets/home_page_container_background.svg',
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 35,
                      child: headingText(
                        'Eye Spy Squid',
                        fontSize: 20,
                      ),
                    ),
                    Positioned(
                      top: 68,
                      left: 35,
                      child: text(
                        'AI/ML',
                        fontSize: 15,
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
