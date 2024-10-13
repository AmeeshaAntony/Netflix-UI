import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/widgets/app_bar.dart';

class ScreenDownload extends StatelessWidget {
       ScreenDownload({super.key});
  final List imageList = [
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg',
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg',
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ykocDqwg5PRUopnBVb1x1DWnEJF.jpg',
      ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarwidget(title: 'Downloads',)),
      body: ListView(
        children: [
          Row(children: [
            kwidth,
            Icon(Icons.settings,color: Colors.white,),
            kwidth,
            Text('Smart Downloads')
          ],),
          Text('Introducing Downloads for you'),
          Text('Download a personalised selection of movies and shows for you.So there is always something to watch on your device'),
          Container(
            width: size.width,
            height: size.width-20,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: size.width*0.35,
                ),
                DownloadsImageWidget(
                  imageList: imageList[0], 
                  margin: EdgeInsets.only(left: 120, top: 10,bottom: 50),
                  angle: 20,
                  size: Size(size.width*0.4,size.height*0.58)
                  ),
                DownloadsImageWidget(
                  imageList: imageList[1], 
                  margin: EdgeInsets.only(right: 120, top: 10,bottom: 50),
                  angle: -20,
                  size: Size(size.width*0.4,size.height*0.58),
                  ),
                DownloadsImageWidget(
                  imageList: imageList[2], 
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  radius: 50,
                  size: Size(size.width*0.5,size.height*0.68),)
              ],
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){},child: Text("Setup",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
          kwidth,
          MaterialButton(
            color: Colors.white,
            onPressed: (){},child: Text("See what you can download",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),)
        ],
       
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle=0,
    required this.margin,
    required this.size,
    this.radius=10
  });
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle*pi/180,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(radius) ,
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imageList))),
          ),
      ),
    );
  }
}