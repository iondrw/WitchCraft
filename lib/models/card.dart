import 'package:witchcraft/models/tool.dart';

class CardData extends Tool {
  final List<String> notes;

  CardData({
    required String imagePath,
    required String title,
    required String description,
    List<String>? initialNotes,
    bool favorit = false,
  }) : notes = initialNotes ?? [],
       super(
         imagePath: imagePath,
         title: title,
         description: description,
         favorit: favorit,
       );
}
