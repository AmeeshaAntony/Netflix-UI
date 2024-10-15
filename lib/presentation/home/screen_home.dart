import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/home/widgets/background_card.dart';
//import 'package:netflix1/presentation/home/widgets/custom_button.dart';
//import 'package:netflix1/core/constants.dart';
//import 'package:netflix1/presentation/home/widgets/num_card.dart';
import 'package:netflix1/presentation/home/widgets/num_title_card.dart';
//import 'package:netflix1/presentation/search/widgets/search_result.dart';
//import 'package:netflix1/presentation/widgets/main_title.dart';
import 'package:netflix1/presentation/widgets/main_title_card.dart';


class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            return true;
          },
          child: const Column(
            children: [
              BackgroundCard(),
              MainTitleCard(
                title: 'Released in the past year',
              ),
              kheight,
              MainTitleCard(
                title: 'Trending now',
              ),
              kheight,
              NumTitleCard(),
              kheight,
              MainTitleCard(
                title: 'Tense Dramas',
              ),
              kheight,
              MainTitleCard(title: 'South Indian Cinemas')
            ],
          ),
        ),
      ),
    );
  }

  TextButton _Playbutton() {
    return TextButton.icon(
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white)),
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow,size: 25,color: Colors.black,),
                        label: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Play',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      );
  }
}



class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
