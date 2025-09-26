import 'package:flutter/material.dart';
import 'package:witchcraft/models/item.dart';
import 'package:witchcraft/models/tool.dart';
import 'package:witchcraft/pages/_favorits.dart';
import 'package:witchcraft/pages/_info_page.dart';
import 'package:witchcraft/widgets/generic_grid.dart';

class ListPage extends StatefulWidget {
  final ItemData item;
  const ListPage({super.key, required this.item});
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Icon favoriteSelected(bool favorite) {
    if (favorite == false) {
      return Icon(Icons.favorite_border);
    }
    return Icon(Icons.favorite);
  }

  void isFavorite(Tool tool, String itemName) {
    final matches = favorits.where((item) => item.title == itemName);
    ItemData? parentItem = matches.isEmpty ? null : matches.first;

    // 2. Ejecutar la lógica de modificación

    if (tool.favorit) {
      // ---- LÓGICA: MARCAR COMO FAVORITO (AÑADIR) ----

      if (parentItem == null) {
        // El contenedor NO existe en 'favorits'. Lo clonamos y lo añadimos.
        var newItem = widget.item.clone();

        // Limpiamos y añadimos solo la herramienta favorita actual
        newItem.info.clear();
        newItem.info.add(tool);

        favorits.add(newItem);
      } else {
        // El contenedor SÍ existe. Añadimos el sub-ítem si no está ya.
        if (!parentItem.info.contains(tool)) {
          parentItem.info.add(tool);
        }
      }
    } else {
      // ---- LÓGICA: DESMARCAR COMO FAVORITO (QUITAR) ----

      if (parentItem != null) {
        // Quita la herramienta específica de la sub-lista 'info'
        parentItem.info.remove(tool);

        // Opcional: Si la sub-lista se vacía, quita el contenedor principal.
        if (parentItem.info.isEmpty) {
          favorits.remove(parentItem);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.item.title)),
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
                    widget.item.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.item.description,
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
              items: widget.item.info,
              builder: (tool) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPage(tool: tool),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color.fromARGB(178, 255, 255, 255),
                    elevation: 5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(tool.imagePath, fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tool.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              tool.favorit = !tool.favorit;
                              isFavorite(tool, widget.item.title);
                            });
                          },
                          icon: favoriteSelected(tool.favorit),
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
