import 'package:flutter/cupertino.dart';

class Styles {
  static const String fontFamily = 'SF-Pro-Display';

  static const TextStyle title = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: FontSize.title,
  );
  static const TextStyle applicationTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: FontSize.applicationTitle,
  );
  static const TextStyle pokemonName = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: FontSize.pokemonName,
  );
  static const TextStyle filterTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: FontSize.filterTitle,
  );
  static const TextStyle descriptionTitle = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
    fontSize: FontSize.descriptionTitle,
  );
  static const TextStyle pokemonNumber = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: FontSize.pokemonNumber,
  );
  static const TextStyle pokemonType = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: FontSize.pokemonType,
  );
}

class FontSize {
  static const double title = 100;
  static const double applicationTitle = 32;
  static const double pokemonName = 26;
  static const double filterTitle = 16;
  static const double descriptionTitle = 16;
  static const double pokemonNumber = 12;
  static const double pokemonType = 12;
}
