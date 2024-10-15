import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.title,required this.icon
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(icon,color: Colors.white,size: 25,),
        Text(title,style: TextStyle(fontSize: 20,),)
      ],
    );
  }
}