import 'package:flutter/material.dart';
import 'package:witchcraft/models/card.dart';
import 'package:witchcraft/models/deck.dart';
import 'package:witchcraft/widgets/generic_grid.dart';

import 'package:witchcraft/pages/_card.dart';

class DeckPage extends StatefulWidget {
  const DeckPage({super.key});

  @override
  State<DeckPage> createState() => _DeckPageState();
}

Deck riderWaite = Deck(
  imagePath: 'assets/Rider_Waite_Tarot/Fool.jpg',
  title: 'Rider - Waite',
  description:
      'es la baraja de tarot más popular y una de las más influyentes en el mundo occidental',
  initialCards: deck,
  favorit: false,
);
final List<CardData> deck = [
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Fool.jpg',
    title: 'The Fool',
    description:
        'Nuevos comienzos, libertad, aventura y un salto de fe hacia lo desconocido, representando un potencial ilimitado.',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Magician.jpg',
    title: 'The Magician',
    description:
        'Representa la manifestación, el poder personal, la creatividad y el comienzo de nuevos proyectos.',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/High_Priestess.jpg',
    title: 'The High Priestess',
    description:
        'Simboliza la sabiduría interior, la intuición, los secretos y la conexión con el subconsciente.',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Empress.jpg',
    title: 'The Empress',
    description: 'The mother',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Emperor.jpg',
    title: 'The Emperor',
    description: 'The father',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Hierophant.jpg',
    title: 'The Hierophant',
    description: 'The Nkowledge',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Lovers.jpg',
    title: 'The lovers',
    description: 'The lovers',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Chariot.jpg',
    title: 'The chariot',
    description: 'To go forward',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Strength.jpg',
    title: 'The Strength',
    description: 'The Strength',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Hermit.jpg',
    title: 'The Hermit',
    description: 'To be alone, to think',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wheel_of_Fortune.jpg',
    title: 'The Wheel of Fortune',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Justice.jpg',
    title: 'The Justice',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Hanged_Man.jpg',
    title: 'The Hanged Man',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Death.jpg',
    title: 'The Death',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Temperance.jpg',
    title: 'The Temperance',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Devil.jpg',
    title: 'The Devil',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Tower.jpg',
    title: 'The Tower',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Star.jpg',
    title: 'The Star',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Moon.jpg',
    title: 'The Moon',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Sun.jpg',
    title: 'The Sun',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Judgement.jpg',
    title: 'The Judgement',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/World.jpg',
    title: 'The World',
    description: 'The start',
  ),
  //End of Arcanes
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups01.jpg',
    title: 'One of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups02.jpg',
    title: 'Two of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups03.jpg',
    title: 'Three of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups04.jpg',
    title: 'Four of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups05.jpg',
    title: 'Five of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups06.jpg',
    title: 'Six of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups07.jpg',
    title: 'Seven of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups08.jpg',
    title: 'Eight of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups09.jpg',
    title: 'Nine of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups10.jpg',
    title: 'Ten of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups11.jpg',
    title: 'Page of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups12.jpg',
    title: 'Knight of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups13.jpg',
    title: 'Queen of Cups',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Cups14.jpg',
    title: 'King of Cups',
    description: 'The start',
  ),
  //End of Cups
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents01.jpg',
    title: 'One of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents02.jpg',
    title: 'Two of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents03.jpg',
    title: 'Three of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents04.jpg',
    title: 'Four of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents05.jpg',
    title: 'Five of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents06.jpg',
    title: 'Six of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents07.jpg',
    title: 'Seven of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents08.jpg',
    title: 'Eight of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents09.jpg',
    title: 'Nine of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents10.jpg',
    title: 'Ten of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents11.jpg',
    title: 'Page of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents12.jpg',
    title: 'Knight of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents13.jpg',
    title: 'Queen of Pentacles',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Pents14.jpg',
    title: 'King of Pentacles',
    description: 'The start',
  ),
  //End of Pentacles
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords01.jpg',
    title: 'One of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords02.jpg',
    title: 'Two of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords03.jpg',
    title: 'Three of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords04.jpg',
    title: 'Four of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords05.jpg',
    title: 'Five of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords06.jpg',
    title: 'Six of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords07.jpg',
    title: 'Seven of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords08.jpg',
    title: 'Eight of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords09.jpg',
    title: 'Nine of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords10.jpg',
    title: 'Ten of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords11.jpg',
    title: 'Page of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords12.jpg',
    title: 'Knight of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords13.jpg',
    title: 'Queen of Swords',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Swords14.jpg',
    title: 'King of Swords',
    description: 'The start',
  ),
  //End of Swords
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands01.jpg',
    title: 'One of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands02.jpg',
    title: 'Two of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands03.jpg',
    title: 'Three of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands04.jpg',
    title: 'Four of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands05.jpg',
    title: 'Five of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands06.jpg',
    title: 'Six of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands07.jpg',
    title: 'Seven of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands08.jpg',
    title: 'Eight of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands09.jpg',
    title: 'Nine of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands10.jpg',
    title: 'Ten of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands11.jpg',
    title: 'Page of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands12.jpg',
    title: 'Knight of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands13.jpg',
    title: 'Queen of Wands',
    description: 'The start',
  ),
  CardData(
    imagePath: 'assets/Rider_Waite_Tarot/Wands14.jpg',
    title: 'King of Wands',
    description: 'The start',
  ),
];

class _DeckPageState extends State<DeckPage> {
  int currentPacurrengeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mazo')),
      body: GenericGrid<CardData>(
        items: deck,
        builder: (card) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardPage(card: card)),
              );
            },
            child: Card(
              color: const Color.fromARGB(178, 255, 255, 255),
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(card.imagePath, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      card.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
