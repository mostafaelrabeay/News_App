import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/listviewbuilder.dart';

import 'package:flutter_application_1/veiws/storybar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 40,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News ',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text('cloud',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.orange,
                  fontWeight: FontWeight.w800,
                ))
          ],
        ),
      ),
      body: const CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: storybar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          ListViewBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
