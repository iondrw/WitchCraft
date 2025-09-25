import 'package:flutter/material.dart';
import 'package:witchcraft/pages/__my_home_page_state.dart';
import 'package:witchcraft/pages/_learn.dart';
import 'package:witchcraft/pages/_more_info.dart';
import 'package:witchcraft/pages/_settings.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key, required this.title});
  final String title;
  @override
  State<InitPage> createState() => _InitPageState();
}

final List<String> titles = ['WitchCraft', 'Aprender', 'Más info'];

class _InitPageState extends State<InitPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(0, 255, 214, 64),
      appBar: AppBar(
        title: Text(titles[currentPageIndex]),

        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
          icon: Icon(Icons.settings, size: 32),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 61, 25, 107),
        indicatorColor: const Color.fromARGB(255, 87, 65, 151),
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.school), label: "Learn"),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: "More info",
          ),
        ],
      ),
      body: <Widget>[
        MyHomePage(),
        LearnPage(),
        MoreInfoPage(),
      ][currentPageIndex],
    );
  }
}
