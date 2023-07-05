import 'package:flutter/material.dart';

import '../../constant/constants.dart';

class DomainWidget extends StatelessWidget {
  const DomainWidget(
      {super.key, required this.domain, required this.domainImagePath});
  final String domainImagePath;
  final String domain;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.17,
      width: width * 0.35,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            domainImagePath,
            height: height * 0.06,
            fit: BoxFit.cover,
          ),
          text(
            domain,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: height * 0.02,
          ),
        ],
      ),
    );
  }
}
