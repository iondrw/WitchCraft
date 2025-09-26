import 'package:flutter/material.dart';
import 'package:witchcraft/models/tool.dart';
import 'package:witchcraft/pages/_info_page.dart';
import 'package:witchcraft/widgets/generic_grid.dart';

class MoreToolsPage extends StatefulWidget {
  const MoreToolsPage({super.key});

  @override
  State<MoreToolsPage> createState() => _MoreToolsPageState();
}

final List<Tool> typeTools = [
  Tool(
    imagePath: 'assets/pendulo.jpg',
    title: 'Pendulo',
    description:
        ' es una herramienta de adivinación que se usa para obtener respuestas intuitivas, conectar con el subconsciente, la energía sutil o el "Yo Superior". ',
  ),
];

class _MoreToolsPageState extends State<MoreToolsPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Herramientas')),
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
                    'assets/moreTools.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      ' Además del tarot existen otras herramientas en el mundo espiritual, estas actúan como intermediarios para acceder a una mayor sabiduría, recibir guía espiritual y conectar con niveles más profundos de la intuición y la conciencia.',
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
            child: GenericGrid<Tool>(
              items: typeTools,
              builder: (item) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPage(tool: item),
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
