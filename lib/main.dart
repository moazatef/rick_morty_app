import 'package:flutter/material.dart';
import 'package:rick_morty_app/features/characters%20names/page/charcter_page_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty Characters',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CharacterListPage(),
    );
  }
}
