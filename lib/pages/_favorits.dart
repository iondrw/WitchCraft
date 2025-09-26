import 'package:flutter/material.dart';
import 'package:witchcraft/models/item.dart';
import 'package:witchcraft/models/tool.dart';
import 'package:witchcraft/pages/_info_page.dart';
import 'package:witchcraft/pages/_lists.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

List<ItemData> favorits = [];

class _FavoritePageState extends State<FavoritePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favoritos')),
      body: ListView.builder(
        itemCount: favorits.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(item: favorits[index]),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(178, 255, 255, 255),
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    favorits[index].imagePath,
                    fit: BoxFit.cover,
                    height: 150,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      favorits[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
