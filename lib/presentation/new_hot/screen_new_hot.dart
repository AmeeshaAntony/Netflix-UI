import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/home/widgets/custom_button.dart';
import 'package:netflix1/presentation/widgets/app_bar.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              title: Text("New & Hot",
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 40,
                  color: Colors.blue,
                ),
                kwidth,
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  child: TabBar(
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      isScrollable: false,
                      tabs: const [
                        Tab(
                          text: 'Coming Soon🍟',
                        ),
                        Tab(
                          text: "Everyone's Watching🍟",
                        ),
                      ]),
                ),
              ),
            )),
        body: TabBarView(children: [
          _buildcomingsoon(context),
          _buildeveryone(),
        ]),
      ),
    );
  }

  Widget _buildcomingsoon(BuildContext context) {
    
    return List
  }

  Widget _buildeveryone() {
    return SizedBox();
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
    
  });
  

  @override
  Widget build(BuildContext context) {
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
          width: 100,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
                            icon: Icon(
                              Icons.volume_off,
                              color: Colors.white,
                              size: 20,
                            ))),
                  ),
                ],
              ),
              //const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TallGirl2',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
                  style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ],
    );
  }
}
