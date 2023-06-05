import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutUsExpandedContainer extends StatelessWidget {
  AboutUsExpandedContainer({
    super.key,
    required this.logo,
    required this.details,
    required this.title,
    required this.textAlign,
    this.descriptionAlignment = Alignment.centerLeft,
  });
  Image logo;
  String details;
  String title;
  TextAlign textAlign;
  Alignment descriptionAlignment = Alignment.centerLeft;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.13,
      // width: 140,
      width: width * 0.8,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (descriptionAlignment != Alignment.centerLeft)
                SizedBox(
                  key: key,
                  height: height * 0.1,
                  width: width * 0.45,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(
                      child: AutoSizeText(
                        details,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        maxLines: 5,
                      ),
                    ),
                  ),
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  logo,
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      title,
                      textAlign: textAlign,
                      style: TextStyle(color: Colors.cyan[200]),
                    ),
                  ),
                ],
              ),
              if (descriptionAlignment == Alignment.centerLeft)
                SizedBox(
                  key: key,
                  height: height * 0.1,
                  width: width * 0.45,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(
                      child: AutoSizeText(
                        details,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        maxLines: 5,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
