import 'package:flutter/material.dart';
import 'package:witchcraft/models/card.dart';

class CardPage extends StatefulWidget {
  final CardData card;

  const CardPage({super.key, required this.card});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final TextEditingController _notesController = TextEditingController();
  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _addNote() {
    if (_notesController.text.isNotEmpty) {
      setState(() {
        widget.card.notes.add(_notesController.text);
        _notesController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.card.title)),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(widget.card.imagePath),
                  Text(
                    widget.card.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(widget.card.description),
                  const SizedBox(height: 10),
                  if (widget.card.notes.isNotEmpty)
                    ...widget.card.notes.map(
                      (note) => ListTile(title: Text(note)),
                    ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _notesController,
                    decoration: InputDecoration(
                      labelText: 'Añadir una nota',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: _addNote,
                      ),
                    ),
                    onSubmitted: (_) => _addNote(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
