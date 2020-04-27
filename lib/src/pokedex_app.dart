import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/poke_info/poke_info_page.dart';

import 'app/home/home_page.dart';

class PokedexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/pokemon_info':
            if (settings.arguments != null) {
              return MaterialPageRoute<void>(
                builder: (BuildContext context) => PokeInfoPage(settings.arguments),
              );
            }
        }
        return null;
      },
    );
  }
}
