import 'package:flutter/material.dart';
import 'package:rick_morty_seris_app/app_router.dart';

void main() {
  runApp(RickMortyAPP(
    appRouter: AppRouter(),
  ));
}

class RickMortyAPP extends StatelessWidget {
  const RickMortyAPP({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
