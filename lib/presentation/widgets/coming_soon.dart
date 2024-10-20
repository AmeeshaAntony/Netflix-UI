import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/home/widgets/custom_button.dart';
import 'package:netflix1/presentation/new_hot/widgets/video_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('FEB',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Videowidget(),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TallGirl2',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: 'Remind me',
                        icon: Icons.all_out_sharp,
                        iconsize: 20,
                        textsixe: 15,
                      ),
                      kwidth,
                      CustomButton(
                        title: 'Info',
                        icon: Icons.info,
                        iconsize: 20,
                        textsixe: 15,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Coming on Friday"),
              kheight,
              const Text("Tall Girl 2",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              kheight,
              Text(
                  'Landing the lead in the school musical is a dream come true for jodi,until the pressure sends her confidence - and her relationship - into a tallspain',
                  style: TextStyle(color: Colors.grey)),
              
            ],
          ),
        ),
      ],
    );
  }
}
