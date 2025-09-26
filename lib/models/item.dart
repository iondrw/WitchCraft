import 'package:witchcraft/models/tool.dart';

class ItemData extends Tool {
  final List<Tool> info;

  ItemData({
    required String imagePath,
    required String title,
    required String description,
    List<Tool>? initialInfo,
    bool favorit = false,
  }) : info = initialInfo ?? [],
       super(
         imagePath: imagePath,
         title: title,
         description: description,
         favorit: favorit,
       );
  ItemData clone() {
    return ItemData(
      imagePath: imagePath,
      title: title,
      description: description,
      // IMPORTANTE: Crea una copia profunda de la lista 'info' para que puedas modificarla
      initialInfo: List<Tool>.from(info),
    );
  }
}
