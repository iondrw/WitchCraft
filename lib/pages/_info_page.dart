import 'package:flutter/material.dart';
import 'package:witchcraft/models/tool.dart';

class InfoPage extends StatefulWidget {
  final Tool tool;

  const InfoPage({super.key, required this.tool});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.tool.title)),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(widget.tool.imagePath),
                  Text(
                    widget.tool.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(widget.tool.description),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
