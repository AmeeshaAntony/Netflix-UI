import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        color: Colors.accents[index%Colors.accents.length],//for different colors to come      
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black12,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.volume_off,color: Colors.white,size: 30,))),
            //right side
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 30,
                    
                    backgroundImage: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg'),
                  ),
                ),
                VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                
                VideoActions(icon: Icons.add, title: 'MY LIST'),
                 
                VideoActions(icon: Icons.share, title: 'Share'),
                 
                VideoActions(icon: Icons.play_arrow, title: 'PLAY'),
                
              ],
            )
          ],),
        ),
      )
      ]
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({super.key,required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,size: 30,),
          Text(title,style: TextStyle(color: Colors.white,fontSize: 16),),
        ],
      ),
    );
  }
}