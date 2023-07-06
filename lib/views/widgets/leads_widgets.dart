import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constant/constants.dart';

class LeadsWidget extends StatelessWidget {
  const LeadsWidget({super.key, required this.name, required this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageBuilder: (context, imageProvider) {
              return Container(
                // height: height * 0.1,
                width: width * 0.25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
            imageUrl: image,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: height * 0.09,
            child: text(name, fontSize: height * 0.018),
          )
        ],
      ),
    );
  }
}
