import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorys/artticlesmodel.dart';

class ListTileCategory extends StatelessWidget {
  final ArticlesModel articlesModel;
  const ListTileCategory({super.key, required this.articlesModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 6,
        left: 6,
        bottom: 16,
      ),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.network(articlesModel.img ??
                'https://imgs.search.brave.com/AOpb2ee6xOf4jtwDBku73kacI1W2CoRjirZFbaOO2Ec/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/a2luZHBuZy5jb20v/cGljYy9tLzcyNC03/MjQ3OTU5XzctbmV3/cy1sb2dvLXBuZy10/cmFuc3BhcmVudC1w/bmcucG5n'),
          ),
          Text(
            articlesModel.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articlesModel.suptitle ?? '',
            style: const TextStyle(
                color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w700),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ]),
      ),
    );
  }
}
