import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.title,required this.icon,
    this.iconsize=30,
    this.textsixe=18
  });
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsixe;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(icon,color: Colors.white,size: iconsize,),
        Text(title,style: TextStyle(fontSize: textsixe,),)
      ],
    );
  }
}