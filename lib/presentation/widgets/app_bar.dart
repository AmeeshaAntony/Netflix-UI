import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix1/core/colors/colors.dart';
import 'package:netflix1/core/constants.dart';
class AppBarwidget extends StatelessWidget {
  const AppBarwidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          kwidth,
          Text(title,style: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.bold
          )),
          Spacer(),
          Icon(Icons.cast,color: Colors.white,),
          kwidth,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,),
          kwidth,
        ],
      ),
    );
  }
}