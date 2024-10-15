import 'package:flutter/material.dart';
import 'package:netflix1/presentation/fast_laugh/widgets/video_list.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: 
          List.generate(10, (index){
            return VideoList(index: index,);
          })
        ,)),
    );
  }
}