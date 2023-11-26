import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/itemmodel.dart';
import 'package:flutter_application_1/categorys/storybarcategory.dart';

class storybar extends StatelessWidget {
  const storybar({super.key});
  final List<model> modelicon = const [
    model(title: 'health', img: 'assets/health.jpg'),
    model(title: 'business', img: 'assets/busness.jpg'),
    model(title: 'sports', img: 'assets/sport.png'),
    model(title: 'science', img: 'assets/busness.jpg'),
    model(title: 'entertainment', img: 'assets/busness.jpg'),
    model(title: 'technology', img: 'assets/busness.jpg'),
    model(title: 'general', img: 'assets/sport.png')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return StoryModel(
            modelicon: modelicon[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: modelicon.length,
      ),
    );
  }
}
