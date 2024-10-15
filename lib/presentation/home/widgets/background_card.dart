import 'package:flutter/material.dart';
import 'package:netflix1/presentation/home/widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://image.tmdb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg'))),
              ),
              Positioned(
                left: 0,bottom: 0,right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(title: "My list",icon: (Icons.add),),
                      _Playbutton(),
                       CustomButton(title: "Info", icon: Icons.info)
                    ],
                  ),
                ),
              )
            ]);
  }
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

