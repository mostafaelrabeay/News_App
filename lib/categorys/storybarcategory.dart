import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/itemmodel.dart';
import 'package:flutter_application_1/veiws/Categoryviews.dart';

class StoryModel extends StatelessWidget {
  const StoryModel({super.key, required this.modelicon});
  final model modelicon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return CategoryView(
              category: modelicon.title,
            );
          }),
        );
      },
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
            image: AssetImage(modelicon.img),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
            child: Text(
          modelicon.title,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.blue),
        )),
      ),
    );
  }
}
