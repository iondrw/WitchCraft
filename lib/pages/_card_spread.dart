import 'package:flutter/material.dart';
import 'package:witchcraft/models/card.dart';
import 'package:witchcraft/pages/_deck.dart';
import 'package:witchcraft/pages/_saves.dart';

class CardSpreadPage extends StatefulWidget {
  const CardSpreadPage({super.key});

  @override
  State<CardSpreadPage> createState() => _CardSpreadPageState();
}

class _CardSpreadPageState extends State<CardSpreadPage> {
  List<CardData> currentDeck = deck;
  List<CardData> tirada = List.generate(
    3,
    (index) => CardData(
      imagePath: 'assets/Rider_Waite_Tarot/Back.jpg',
      title: '',
      description: '',
    ),
  );
  int index = 0;

  @override
  void initState() {
    super.initState();
    currentDeck.shuffle();
  }

  void seleccionarCarta() {
    setState(() {
      if (currentDeck.isNotEmpty && index < 3) {
        tirada[index] = currentDeck.removeLast();
        index++;
      }
    });
  }

  void guardarTirada() {
    setState(() {
      saves.add(List.from(tirada));

      tirada.forEach((card) {
        if (card.imagePath != 'assets/Rider_Waite_Tarot/Back.jpg') {
          currentDeck.add(card);
        }
      });
      currentDeck.shuffle();

      tirada = List.generate(
        3,
        (index) => CardData(
          imagePath: 'assets/Rider_Waite_Tarot/Back.jpg',
          title: '',
          description: '',
        ),
      );
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tirada')),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              'assets/tarot.jpg',
                              fit: BoxFit.contain,
                              width: 350,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(64, 255, 255, 255),
                            ),
                            fixedSize: WidgetStatePropertyAll(Size(325, 325)),
                          ),
                          onPressed: seleccionarCarta,
                          child: const Column(
                            verticalDirection: VerticalDirection.down,
                            children: [
                              Text(
                                '\nSelecciona tu carta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'IMFell',
                                  fontStyle: FontStyle.italic,
                                  fontSize: 59,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.asset(
                            tirada[0].imagePath,
                            width: 100,
                            height: 150,
                            fit: BoxFit.contain,
                          ),
                          Card(child: Text(tirada[0].title)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Card(
                      child: Column(
                        children: [
                          Image.asset(
                            tirada[1].imagePath,
                            width: 100,
                            height: 150,
                            fit: BoxFit.contain,
                          ),
                          Card(child: Text(tirada[1].title)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Card(
                      child: Column(
                        children: [
                          Image.asset(
                            tirada[2].imagePath,
                            width: 100,
                            height: 150,
                            fit: BoxFit.contain,
                          ),
                          Card(child: Text(tirada[2].title)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(250, 50)),
                    backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onPressed: guardarTirada,
                  child: const Row(
                    children: [
                      Icon(Icons.save_alt, size: 30),
                      SizedBox(width: 30),
                      Text('Guardar tirada', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
