import 'package:flutter/material.dart';

class ButtonData {
  final String imagePath;
  final String title;
  final bool favorit; // Ahora es final
  final Widget destination;

  const ButtonData({
    required this.imagePath,
    required this.title,
    this.favorit = false,
    required this.destination,
  });
}
