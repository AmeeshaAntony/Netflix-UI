import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/search/widgets/title.dart';

const imageUrl = [
  'https://image.tmdb.org/t/p/w600_and_h900_bestv2/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg'
];
class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTexttitle(title: 'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.5,
            shrinkWrap: true,
            children: List.generate(20, (index){
              return const Maincard();
            }),
          ))
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(imageUrl[0]),
          fit: BoxFit.cover,
          )
      ),
    );
  }
}