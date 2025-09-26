class Tool {
  final String imagePath;
  final String title;
  final String description;
  bool favorit;

  Tool({
    required this.imagePath,
    required this.title,
    required this.description,
    this.favorit = false,
  });
}
