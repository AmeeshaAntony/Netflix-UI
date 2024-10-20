import 'package:flutter/material.dart';

class Videowidget extends StatelessWidget {
  const Videowidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network(
            "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ykocDqwg5PRUopnBVb1x1DWnEJF.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black12,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: Colors.white,
                    size: 20,
                  ))),
        ),
      ],
    );
  }
}
