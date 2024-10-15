import 'package:flutter/material.dart';
import 'package:netflix1/presentation/home/screen_home.dart';
import 'package:netflix1/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
         MainTitle(title: title),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10,(index)=>const Maincard())
              ,
            ),
          ),
        )
      ],
    );
  }
}
