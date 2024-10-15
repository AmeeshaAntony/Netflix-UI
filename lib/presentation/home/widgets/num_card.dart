import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumCard extends StatelessWidget {
  const NumCard({
    super.key, required this.index
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 200,
              ),
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: NetworkImage('https://image.tmdb.org/t/p/w600_and_h900_bestv2/4q2NNj4S5dG2RLF9CpXsej7yXl.jpg'),fit: BoxFit.cover),
                  ),
                  
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: -30,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: Colors.white,
              child: Text(
                '${index+1}',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black,
                  ))))
        ],
      ),
    );
  }
}
