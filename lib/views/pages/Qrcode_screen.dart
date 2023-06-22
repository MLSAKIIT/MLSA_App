
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlsa_app/constant/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../constant/constants.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});
  @override
  Widget build(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        title: headingText("QR CODE" , fontWeight: FontWeight.bold, fontSize: height/35 ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ) ,

        body: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  ' Show this code at the entry \n'
                      'And enjoy the event \n\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: height/35 ,color: Colors.white),
                ),
              ),

              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5.5,
                    color: Colors.black
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(76, 74, 233, 252),
                      blurRadius: 100
                    )
                  ]
                  ),

                child: QrImageView(
                  data: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                  version: QrVersions.auto,
                  size:  height/4,
                  backgroundColor: Colors.black,
                  eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.blue),
                  gapless: (false),
                  dataModuleStyle: QrDataModuleStyle(color: Colors.white),

                ),
              )

            ],
          ),
        ),

      ],
    ));
  }
}
