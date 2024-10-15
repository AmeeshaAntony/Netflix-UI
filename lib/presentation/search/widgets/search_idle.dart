import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/search/widgets/title.dart';
final imageUrl = [
    'https://media.themoviedb.org/t/p/w250_and_h141_face/9I6LgZ5110ycg4pyobJxGTFWFCF.jpg',
];
class ScreenIdwidget extends StatelessWidget {
   ScreenIdwidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTexttitle(title: 'Top Searches',),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => Topsearchitem(imageUrl[index % imageUrl.length]), 
            separatorBuilder: (ctx,index)=> kheight, 
            itemCount: 10),
        )
      ],
    );
  }
}



class Topsearchitem extends StatelessWidget {
  final String imageUrl;
  const Topsearchitem(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth*0.35,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),)
          ),
        ),
        kwidth,
        const Expanded(child: Text('Movie Name',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
      const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 23,
          child: Icon(CupertinoIcons.play_fill,color: Colors.white,),
        ),
        )
      ],
    );
  }
}