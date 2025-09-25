import 'package:flutter/material.dart';

class SymbologyPage extends StatefulWidget {
  const SymbologyPage({super.key});

  @override
  State<SymbologyPage> createState() => _SymbologyPageState();
}

class _SymbologyPageState extends State<SymbologyPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Simbología')));
  }
}
