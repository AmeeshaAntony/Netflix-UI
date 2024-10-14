import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/widgets/app_bar.dart';

class ScreenDownload extends StatelessWidget {
       ScreenDownload({super.key});
  final _widgetlist = [
    const _Smartdownloads(),
          Section2(),
          Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarwidget(title: 'Downloads',)),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx,index)=>_widgetlist[index], 
        separatorBuilder: (ctx,index)=>SizedBox(height: 25,), 
        itemCount: _widgetlist.length)
    );
  }
}

class Section2 extends StatelessWidget {
   Section2({super.key});
  final List imageList = [
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg',
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg',
        'https://image.tmdb.org/t/p/w600_and_h900_bestv2/ykocDqwg5PRUopnBVb1x1DWnEJF.jpg',
      ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Introducing Downloads for you',style: TextStyle(color: Colors.white,fontSize: 24),textAlign: TextAlign.center,),
          kheight,
          Text('Download a personalised selection of \n movies and shows for you.So there is \n always something to watch on your \n device',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey,fontSize: 16),),
          kheight,
          SizedBox(
            width: size.width,
            height: size.width-160,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: size.width*0.35,
                ),
                DownloadsImageWidget(
                  imageList: imageList[0], 
                  margin: EdgeInsets.only(left: 170,top: 50),
                  angle: 35,radius: 10,
                  size: Size(size.width*0.35,size.width*0.5)
                  ),
                DownloadsImageWidget(
                  imageList: imageList[1], 
                  margin: EdgeInsets.only(right: 170,top: 50),
                  angle: -35,radius: 10,
                  size: Size(size.width*0.35,size.width*0.5),
                  ),
                DownloadsImageWidget(
                  imageList: imageList[2], 
                  margin: EdgeInsets.only(top: 50,bottom: 35),
                  radius: 10,
                  size: Size(size.width*0.4,size.height*0.43),)
              ],
            ),
          ),
          
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [      
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              color: const Color.fromARGB(255, 6, 76, 190),
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Setup",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),),
        ),
          kwidth,
          kheight,
          MaterialButton(
            color: Colors.white,
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text("See what you can download",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),)
      ],
    );
  }
}
class _Smartdownloads extends StatelessWidget {
  const _Smartdownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      kwidth,
      Icon(Icons.settings,color: Colors.white,),
      kwidth,
      Text('Smart Downloads')
    ],);
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
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle*pi/180,
        child: ClipRRect(
          borderRadius:BorderRadius.circular(radius) ,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageList))),
            ),
        ),
      ),
    );
  }
}