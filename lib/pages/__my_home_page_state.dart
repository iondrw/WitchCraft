import 'package:flutter/material.dart';
import 'package:witchcraft/pages/_moon_fase.dart';
import 'package:witchcraft/pages/_card_spread.dart';
import 'package:witchcraft/pages/_favorits.dart';
import 'package:witchcraft/pages/_saves.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(350, 60)),
                    backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => MoonFasePage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(150),
                        child: Image.asset(
                          'assets/5.png',
                          fit: BoxFit.contain,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Actual fase lunar',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(150),
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              'assets/leerTarot.png',
                              fit: BoxFit.contain,
                              width: 350,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              const Color.fromARGB(64, 255, 255, 255),
                            ),
                            fixedSize: WidgetStatePropertyAll(Size(325, 325)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => CardSpreadPage(),
                              ),
                            );
                          },
                          child: Column(
                            verticalDirection: VerticalDirection.down,
                            children: [
                              Text(
                                '\nLeer tarot',
                                style: TextStyle(
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
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/Button2.jpg',
                                fit: BoxFit.contain,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (context) => FavoritePage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                shape:
                                    WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius
                                            .zero, // Establece el radio a 0 para bordes cuadrados
                                      ),
                                    ),
                              ),
                              child: Text(
                                'Favoritos',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/Button1.jpg',
                                fit: BoxFit.contain,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape:
                                    WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius
                                            .zero, // Establece el radio a 0 para bordes cuadrados
                                      ),
                                    ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (context) => SavePage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Tiradas Guardadas',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
