import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix1/core/constants.dart';
//import 'package:netflix1/presentation/home/widgets/custom_button.dart';
import 'package:netflix1/presentation/new_hot/widgets/everyone_watching.dart';
//import 'package:netflix1/presentation/new_hot/widgets/video_widget.dart';
//import 'package:netflix1/presentation/home/widgets/custom_button.dart';
import 'package:netflix1/presentation/widgets/coming_soon.dart';
//import 'package:netflix1/presentation/widgets/app_bar.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
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
                          text: '           Coming Soon🍟          ',
                        ),
                        Tab(
                          text: "       Everyone's Watching🍟       ",
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
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoon());
  }

  Widget _buildeveryone() {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) => const Everyonewatching());
  }
}

