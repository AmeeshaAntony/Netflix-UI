import 'package:flutter/material.dart';
import 'package:netflix1/presentation/home/widgets/num_card.dart';
import 'package:netflix1/presentation/widgets/main_title.dart';

class NumTitleCard extends StatelessWidget {
  const NumTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             MainTitle(title: 'Top 10 TV Shows in India today'),
            Padding(
    padding: const EdgeInsets.all(8.0),
    child: LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10,(index)=> NumCard(index: index,))
        ,
      ),
    ),
            )
          ],
        );
  }
}