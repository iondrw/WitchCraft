import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:witchcraft/pages/_init.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d('Logger is working');
    return MaterialApp(
      title: 'WitchCraft',

      theme: ThemeData(
        fontFamily: 'IMFell',
        scaffoldBackgroundColor: const Color.fromARGB(255, 134, 123, 167),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              const Color.fromARGB(76, 239, 239, 244),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          titleSpacing: 20,
          titleTextStyle: TextStyle(
            fontFamily: 'IMFell',
            fontSize: 30,
            color: const Color.fromARGB(255, 247, 244, 244),
          ),
          backgroundColor: const Color.fromARGB(255, 61, 25, 107),
          centerTitle: true,
          toolbarHeight: 50,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        navigationBarTheme: NavigationBarThemeData(
          iconTheme: WidgetStateProperty.all(
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 100, 18, 241),
        ),
      ),
      home: const InitPage(title: ''),
    );
  }
}
