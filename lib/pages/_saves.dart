import 'package:flutter/material.dart';
import 'package:witchcraft/models/card.dart';

List<List<CardData>> saves = [];

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tiradas guardadas')),
      body: saves.isEmpty
          ? const Center(
              child: Text(
                'No hay tiradas guardadas.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: saves.length,
              itemBuilder: (context, index) {
                final tirada = saves[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tirada guardada',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: tirada.map((card) {
                              return Image.asset(
                                card.imagePath,
                                width: 80,
                                height: 120,
                                fit: BoxFit.contain,
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 10),
                          // Aquí podrías agregar más detalles, como un botón para ver la tirada completa.
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
