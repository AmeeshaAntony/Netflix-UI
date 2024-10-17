import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix1/core/constants.dart';
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
              bottom:  PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  child: TabBar(
                    unselectedLabelColor:Colors.white ,
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
                    isScrollable: false,
                    tabs: const [
                    Tab(text: 'Coming Soon🍟',),
                    Tab(text: "Everyone's Watching🍟",),
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
    Size size = MediaQuery.of(context).size;
    return ListView(
      children:[
        kheight,
         Row(
        children: [
          const SizedBox(
            width: 50,
            child: Column(
              children: [
                Text('Feb 11'),
              ],
            ),
          ),
          Container(
            width: size.width-50,
            height: 500,
            color: Colors.blue,
          ),
        ],
      ),]
    );
  }
  
  Widget _buildeveryone() {
    return SizedBox();
  }
}

