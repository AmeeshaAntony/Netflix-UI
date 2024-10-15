import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix1/core/constants.dart';
import 'package:netflix1/presentation/search/widgets/search_idle.dart';
import 'package:netflix1/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
             ),
             suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
             style: TextStyle(color: const Color.fromARGB(255, 181, 181, 181)),
            ),
            kheight,
            Expanded(child: SearchResult()),

          ],
        ),
      )),
    );
  }
}