import 'package:flutter/material.dart';
import 'package:witchcraft/pages/_deck.dart';
import 'package:witchcraft/models/button.dart';
import 'package:witchcraft/pages/_symbology.dart';
import 'package:witchcraft/pages/_numerology.dart';
import 'package:witchcraft/widgets/generic_grid.dart';
import 'package:witchcraft/widgets/image_button.dart';

class MoreInfoPage extends StatefulWidget {
  const MoreInfoPage({super.key});

  @override
  State<MoreInfoPage> createState() => _MoreInfoPageState();
}

class _MoreInfoPageState extends State<MoreInfoPage> {
  final List<ButtonData> accesos = [
    ButtonData(
      imagePath: 'assets/tarot.jpg',
      title: 'Tarot',
      destination: const DeckPage(),
    ),
    ButtonData(
      imagePath: 'assets/Symbology.jpg',
      title: 'Simbología',
      destination: const SymbologyPage(),
    ),
    ButtonData(
      imagePath: 'assets/Numerology.jpg',
      title: 'Numerología',
      destination: const NumerologyPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GenericGrid<ButtonData>(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            items: accesos,
            builder: (item) {
              return ImageButton(
                imagePath: item.imagePath,
                title: item.title,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item.destination),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
