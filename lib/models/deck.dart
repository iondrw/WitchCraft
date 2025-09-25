import 'package:witchcraft/models/card.dart';
import 'package:witchcraft/models/tool.dart';

class Deck extends Tool {
  final List<CardData> card;
  Deck({
    required String imagePath,
    required String title,
    required String description,
    List<CardData>? initialCards,
    bool favorit = false,
  }) : card = initialCards ?? [],
       super(
         imagePath: imagePath,
         title: title,
         description: description,
         favorit: favorit,
       );
}
