import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/artticlesmodel.dart';

import 'package:flutter_application_1/services/newsservices.dart';
import 'package:flutter_application_1/veiws/listgeneralview.dart';

class ListViewBuilder extends StatefulWidget {
  final String category;
  const ListViewBuilder({super.key, required this.category});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
//turne the widget to statefullwidget to use this code //////
  var future;
  @override
  void initState() {
    super.initState();
    future = GetNews(Dio()).fetchnews(category: widget.category);
  }

  // Future<void> getgeneral() async {
  //   news = await GetNews(Dio()).fetchnews();
  //   isloding = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListGeneral(news: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text('eror')),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                heightFactor: Checkbox.width,
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
//  isloding
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : ListGeneral(news: news);
  }
}
