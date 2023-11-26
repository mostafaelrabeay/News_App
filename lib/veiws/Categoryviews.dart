import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/listviewbuilder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          ListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
