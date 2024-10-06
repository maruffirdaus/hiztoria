import 'package:flutter/material.dart';
import 'package:hiztoria/home_page_large.dart';
import 'package:hiztoria/home_page_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 800) {
            return const HomePageSmall();
          } else {
            return HomePageLarge(titleSectionWidth: constraints.maxWidth/100*40);
          }
        }
    );
  }
}