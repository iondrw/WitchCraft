import 'package:flutter/material.dart';

class NumerologyPage extends StatefulWidget {
  const NumerologyPage({super.key});

  @override
  State<NumerologyPage> createState() => _NumerologyPageState();
}

class _NumerologyPageState extends State<NumerologyPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Numerología')));
  }
}
