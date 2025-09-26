import 'package:flutter/material.dart';
import 'package:witchcraft/models/item.dart';
import 'package:witchcraft/models/tool.dart';
import 'package:witchcraft/pages/_lists.dart';
import 'package:witchcraft/widgets/generic_grid.dart';

class SymbologyPage extends StatefulWidget {
  const SymbologyPage({super.key});

  @override
  State<SymbologyPage> createState() => _SymbologyPageState();
}

final List<ItemData> typeSymbology = [
  ItemData(
    initialInfo: [
      Tool(
        imagePath: 'assets/water.jpg',
        title: 'Agua',
        description:
            'El agua simboliza la vida, la purificación, las emociones, la intuición y la fuerza femenina.',
      ),
    ],
    imagePath: 'assets/elements.jpg',
    title: 'Elementos',
    description:
        'Se basa en los cuatro elementos clásicos (tierra, agua, aire, fuego), a menudo representados por triángulos con distintas orientaciones, y se asocia a cualidades específicas que son fundamentales en rituales y hechizos para la protección, la sanación o la manifestación de deseos.',
  ),
];

class _SymbologyPageState extends State<SymbologyPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simbología')),
      body: GenericGrid<ItemData>(
        items: typeSymbology,
        builder: (typeSymb) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(item: typeSymb),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(178, 255, 255, 255),
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(typeSymb.imagePath, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      typeSymb.title,
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
