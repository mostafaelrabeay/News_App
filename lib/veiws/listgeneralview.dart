import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/artticlesmodel.dart';
import 'package:flutter_application_1/categorys/listtilecategory.dart';

// ignore: must_be_immutable
class ListGeneral extends StatelessWidget {
  final List<ArticlesModel> news;

  const ListGeneral({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) => ListTileCategory(articlesModel: news[index]),
      ),
    );
  }
}
