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

    if (tool.favorit) {
      if (parentItem == null) {
        var newItem = widget.item.clone();

        newItem.info.clear();
        newItem.info.add(tool);

        favorits.add(newItem);
      } else {
        if (!parentItem.info.contains(tool)) {
          parentItem.info.add(tool);
        }
      }
    } else {
      if (parentItem != null) {
        parentItem.info.remove(tool);
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
