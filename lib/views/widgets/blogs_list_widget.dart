import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({
    super.key,
    required this.assetName,
    required this.blogTitle,
    required this.blogDescription,
  });

  final String assetName;
  final String blogTitle;
  final String blogDescription;
  final String blogAuthor = 'Someone';
  final String blogWebsite = 'Medium';

  @override
  Widget build(BuildContext context) {
    final double verticalBlock = MediaQuery.of(context).size.height / 997;
    final double horizontalBlock = MediaQuery.of(context).size.width / 423;
    return SizedBox(
      height: verticalBlock * 131,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            SizedBox(
              width: horizontalBlock * 423,
              height: verticalBlock * 94,
              child: Image.asset(
                assetName,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: verticalBlock * 75,
                width: horizontalBlock * 423,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: horizontalBlock * 11,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: verticalBlock * 15,
                        ),
                        text(
                          blogTitle,
                          color: black,
                          fontSize: verticalBlock * 20,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: verticalBlock,
                        ),
                        text(
                          blogDescription,
                          color: black,
                          fontSize: verticalBlock * 12,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        SizedBox(
                          height: verticalBlock * 5,
                        ),
                        text(
                          "By $blogAuthor",
                          fontSize: verticalBlock * 12,
                          fontWeight: FontWeight.w300,
                          color: black,
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/home_page_images/medium_logo.png',
                          width: 94,
                          height: 23,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: verticalBlock * 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: horizontalBlock * 5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
