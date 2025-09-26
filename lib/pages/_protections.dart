import 'package:flutter/material.dart';
import 'package:witchcraft/models/item.dart';
import 'package:witchcraft/models/tool.dart';
import 'package:witchcraft/pages/_lists.dart';
import 'package:witchcraft/widgets/generic_grid.dart';

class ProtectionsPage extends StatefulWidget {
  const ProtectionsPage({super.key});

  @override
  State<ProtectionsPage> createState() => _ProtectionsPageState();
}

final List<ItemData> typeProtections = [
  ItemData(
    initialInfo: [
      Tool(
        imagePath: 'assets/ojo.jpg',
        title: 'Ojo turco',
        description:
            'Es un amuleto o talismán con forma de gota que representa un ojo, utilizado para proteger contra el mal de ojo y las malas energías. Proviene de Turquía y sus creencias se remontan a la antigüedad, creyéndose que actúa como un espejo que desvía la envidia y las intenciones negativas.',
      ),
    ],
    imagePath: 'assets/talisman.jpg',
    title: 'Talismanes',
    description:
        'Objeto cargado de energía, a menudo con inscripciones o símbolos, que se cree tiene poderes mágicos para resguardar al portador de daños, desgracias o malas influencias, actuando como un guardián contra lo negativo. ',
  ),
];

class _ProtectionsPageState extends State<ProtectionsPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Protecciones')),
      body: Column(
        children: [
          // Section for the description and image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/protections.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Prácticas, creencias o amuletos que buscan resguardar el bienestar emocional y espiritual de las personas de las energías o influencias negativas.',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // The GenericGrid will take the remaining space
          Expanded(
            child: GenericGrid<ItemData>(
              items: typeProtections,
              builder: (item) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListPage(item: item),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color.fromARGB(178, 255, 255, 255),
                    elevation: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(item.imagePath, fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item.title,
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
          ),
        ],
      ),
    );
  }
}
