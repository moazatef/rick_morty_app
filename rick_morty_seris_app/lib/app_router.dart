import 'package:flutter/material.dart';
import 'constants/strings.dart';
import 'presentation/screens/charachter_screen.dart';
import 'presentation/screens/characters_details.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) => const CharacterScreen());
      case characterDetailScreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}
