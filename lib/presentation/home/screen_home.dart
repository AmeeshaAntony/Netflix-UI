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

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return SingleChildScrollView(
                child: NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    print(direction);
                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        //physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          BackgroundCard(),
                          MainTitleCard(
                            title: 'Released in the past year',
                          ),
                          SizedBox(
                              height: 10), // replaced kheight with SizedBox
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          SizedBox(
                              height: 10), // replaced kheight with SizedBox
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          NumTitleCard(),
                          SizedBox(
                              height: 10), // replaced kheight with SizedBox
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          MainTitleCard(
                            title: 'Tense Dramas',
                          ),
                          SizedBox(
                              height: 10), // replaced kheight with SizedBox
                          MainTitleCard(
                            title: 'Trending now',
                          ),
                          MainTitleCard(title: 'South Indian Cinemas')
                        ],
                      ),
                      scrollNotifier.value == true
                          ? AnimatedContainer(
                            
                              width: double.infinity,
                              height: 80,
                              color: Colors.transparent,
                              duration: Duration(milliseconds: 500),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHoxdoCIm725ct_McxxeTLB1MkYuXBWmQeFQ&s',
                                        width: 40,
                                        height: 40,
                                        errorBuilder:
                                            (context, error, StackTrace) {
                                          return Icon(Icons.error);
                                        },
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.cast,
                                        color: Colors.white,
                                      ),
                                      kwidth,
                                      Container(
                                        width: 30,
                                        height: 30,
                                        color: Colors.blue,
                                      ),
                                      kwidth,
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Text("TV Shows",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text("Movies",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text("Categories",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                  ],)
                                ],
                              ))
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
              );
            }));
  }

  TextButton _Playbutton() {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: Colors.black,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
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
