import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlsa_app/constant/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class Qrscreen extends StatelessWidget{
  @override
  Widget build(BuildContext) => Scaffold(


    body: Stack(
      children: [
        Container(
          child:SvgPicture.asset('assets/iPhone 14 Pro Max - 15.svg',
              fit: BoxFit.cover),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/qrcode.png'),
            SizedBox(height: 7, width: 7),
            Text('Show this code at the entry\n\nand attend the event ',textAlign: TextAlign.center,
              style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 13)) ,
            ),
          ],
        ),
       Container(
         margin:EdgeInsets.only(top:30, left: 10),
         alignment: Alignment.topLeft,
         child:
         IconButton(
           icon: Image.asset('assets/Arrow_left.png'),

           onPressed: (){},
         ),
       ),
        Container(
          margin: EdgeInsets.only(top: 75, left: 40),
          child: Text(
            ' QR CODE ',textAlign: TextAlign.left,
            style:GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 27,fontWeight: bold)),
          ),
        )


      ],
    )


  );

}

