import 'package:flutter/material.dart';

class MoonFasePage extends StatefulWidget {
  const MoonFasePage({super.key});

  @override
  State<MoonFasePage> createState() => _MoonFasePageState();
}

class _MoonFasePageState extends State<MoonFasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Fase lunar'),
        elevation: 0, // Elimina la sombra
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter, // Centra los hijos en el Stack
          children: [
            // Contenido principal: La imagen y las recomendaciones
            SingleChildScrollView(
              child: Card(
                elevation: 16,
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // El Column solo toma el espacio necesario
                  children: [
                    Image.asset('assets/5.png'), // La imagen de la luna
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Recomendaciones!!',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            'La luna llena se recomienda como un momento para la liberación, la sanación, la celebración y la manifestación de deseos, ya que se considera una fase con energía intensa y poderosa. Algunas actividades que se pueden realizar son: limpiezas energéticas con agua de luna o sales, meditar para soltar lo que no sirve, expresar la creatividad a través del arte o la danza, y declarar intenciones y objetivos para atraer lo deseado. ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // El texto que se superpone
            Positioned(
              top: 300, // Ajusta esta posición para ubicar el texto
              child: const Text(
                'Luna llena',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontFamily: 'IMFell', // Si es una fuente personalizada
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
