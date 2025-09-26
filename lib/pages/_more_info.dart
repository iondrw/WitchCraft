import 'package:flutter/material.dart';
import 'package:witchcraft/models/button.dart';
import 'package:witchcraft/pages/_more_tools.dart';
import 'package:witchcraft/pages/_protections.dart';
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
      imagePath: 'assets/protections.jpg',
      title: 'Protecciones',
      destination: const ProtectionsPage(),
    ),
    ButtonData(
      imagePath: 'assets/moreTools.jpg',
      title: 'Otras herramientas',
      destination: const MoreToolsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
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
