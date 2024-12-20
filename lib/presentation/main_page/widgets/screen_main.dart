import 'package:flutter/material.dart';
import 'package:netflix1/core/colors/colors.dart';
import 'package:netflix1/presentation/downloads/widgets/screend.dart';
import 'package:netflix1/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix1/presentation/home/screen_home.dart';
import 'package:netflix1/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix1/presentation/new_hot/screen_new_hot.dart';
import 'package:netflix1/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final _pages=[
    ScreenHome(),
    ScreenNewHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownload()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context,int index,_){
          return _pages[index];
        },),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}