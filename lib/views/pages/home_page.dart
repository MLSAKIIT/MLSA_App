import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';
import 'package:mlsa_app/views/widgets/blogs_list_widget.dart';
import 'package:mlsa_app/views/widgets/past_events_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var verticalBlock = width / 423; // Get the vertical block size
    var horizontalBlock = height / 997; // Get the horizontal block size
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/home_page/mlsa_icon_background_image.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: horizontalBlock * 20,
                top: verticalBlock * 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/mlsa_logo.png',
                        height: verticalBlock * 45,
                        fit: BoxFit.contain,
                      ),
                      const Spacer(),
                      Container(
                        height: verticalBlock * 70,
                        width: horizontalBlock * 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/home_page/qr_icon_background_gradient.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: verticalBlock * 20,
                            ),
                            Image.asset(
                              'assets/home_page/qr_code_homepage.png',
                              height: verticalBlock * 24,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: horizontalBlock * 12),
                          ],
                        ),
                      ),
                      // SizedBox(width: horizontalBlock * 20),
                    ],
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
                      // height: verticalBlock * 157,
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
                              width: 1, color: Color(0xFF81ECFC)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: horizontalBlock * 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    headingText(
                                      'Eye Spy Squid',
                                      fontSize: verticalBlock * 20,
                                    ),
                                    SizedBox(height: verticalBlock * 2),
                                    text(
                                      'AI/ML',
                                      fontSize: verticalBlock * 15,
                                      color: white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(height: verticalBlock * 25),
                                    SizedBox(
                                      width: width * 0.5,
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
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      // height: verticalBlock * 32,
                                      // width: horizontalBlock * 102,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1, color: accentColor),
                                          borderRadius: BorderRadius.circular(
                                              verticalBlock * 20),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: horizontalBlock * 24,
                                          vertical: verticalBlock * 6,
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
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: horizontalBlock * 8,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return PastEventsWidget(
                          assetName: homePageEventsAssetList[index],
                          eventName: homePageEventsNameList[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: verticalBlock * 30),
                  text('Our blogs',
                      fontSize: verticalBlock * 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  SizedBox(height: verticalBlock * 20),
                  ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: verticalBlock * 13,
                          ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return BlogsWidget(
                          assetName: homePageBlogsAssetList[index],
                          blogTitle: homePageBlogsNameList[index],
                          blogDescription: homePageBlogsDescriptionList[index],
                          horizontalBlock: horizontalBlock,
                          verticalBlock: verticalBlock,
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
