import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/home/widgets/custom_button.dart';
import 'package:netflix1/presentation/new_hot/widgets/video_widget.dart';

class Everyonewatching extends StatelessWidget {
  const Everyonewatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text("Friends",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        kheight,
        const Text(
            'This hit sitcom follows the merry adventures of six 20-something as they navigate the pitfalls of goa',
            style: TextStyle(color: Colors.grey)),
        const SizedBox(
          height: 40,
        ),
        const Videowidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              title: 'Share',
              icon: Icons.share,
              iconsize: 20,
              textsixe: 15,
            ),
            kwidth,
            CustomButton(
              title: 'My List',
              icon: Icons.add,
              iconsize: 20,
              textsixe: 15,
            ),
            kwidth,
            CustomButton(
              title: 'Play',
              icon: Icons.play_arrow,
              iconsize: 20,
              textsixe: 15,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
