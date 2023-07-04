import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({
    super.key,
    required this.assetName,
    required this.blogTitle,
    required this.blogDescription,
    required this.verticalBlock,
    required this.horizontalBlock,
  });

  final String assetName;
  final String blogTitle;
  final String blogDescription;
  final String blogAuthor = 'Someone';
  final String blogWebsite = 'Medium';
  final double verticalBlock;
  final double horizontalBlock;

  @override
  Widget build(BuildContext context) {
    // final double verticalBlock = MediaQuery.of(context).size.height / 997;
    // final double horizontalBlock = MediaQuery.of(context).size.width / 423;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            // width: horizontalBlock * 423,
            height: verticalBlock * 56,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assetName),
                fit: BoxFit.cover,
              ),
              ),
          ),
          Container(
            height: verticalBlock * 75,
            // width: horizontalBlock * 423,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                      blogTitle,
                      color: black,
                      fontSize: verticalBlock * 17.5,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: verticalBlock,
                    ),
                    text(
                      blogDescription,
                      color: black,
                      fontSize: verticalBlock * 10.5,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: verticalBlock * 5,
                    ),
                    text(
                      "By $blogAuthor",
                      fontSize: verticalBlock * 9,
                      fontWeight: FontWeight.w300,
                      color: black,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/home_page_images/medium_logo.png',
                      // width: horizontalBlock * 94,
                      height: verticalBlock * 18,
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
          )
        ],
      ),
    );
  }
}
