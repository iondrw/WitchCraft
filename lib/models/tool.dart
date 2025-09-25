class Tool {
  final String imagePath;
  final String title;
  final String description;
  final bool favorit; // Ahora es final

  const Tool({
    required this.imagePath,
    required this.title,
    required this.description,
    this.favorit = false,
  });
}
