import 'package:flutter/material.dart';

class PokedexColor {
  static const Color white = Color(0xFFFFFFFF);

  static const TypeColor bug = TypeColor(Color(0xFF8CB330), Color(0xFF8BD674));
  static const TypeColor dark = TypeColor(Color(0xFF58575F), Color(0xFF6F6E78));
  static const TypeColor dragon = TypeColor(Color(0xFF0F6AC0), Color(0xFF7383B9));
  static const TypeColor electric = TypeColor(Color(0xFFEED535), Color(0xFFF2CB55));
  static const TypeColor fairy = TypeColor(Color(0xFFED6EC7), Color(0xFFEBA8C3));
  static const TypeColor fighting = TypeColor(Color(0xFFD04164), Color(0xFFEB4971));
  static const TypeColor fire = TypeColor(Color(0xFFFD7D24), Color(0xFFFFA756));
  static const TypeColor flying = TypeColor(Color(0xFF748FC9), Color(0xFF83A2E3));
  static const TypeColor ghost = TypeColor(Color(0xFF556AAE), Color(0xFF8571BE));
  static const TypeColor grass = TypeColor(Color(0xFF62B957), Color(0xFF8BBE8A));
  static const TypeColor ground = TypeColor(Color(0xFFDD7748), Color(0xFFF78551));
  static const TypeColor ice = TypeColor(Color(0xFF61CEC0), Color(0xFF91D8DF));
  static const TypeColor normal = TypeColor(Color(0xFF9DA0AA), Color(0xFFB5B9C4));
  static const TypeColor poison = TypeColor(Color(0xFFA552CC), Color(0xFF9F6E97));
  static const TypeColor psychic = TypeColor(Color(0xFFEA5D60), Color(0xFFFF6568));
  static const TypeColor rock = TypeColor(Color(0xFFBAAB82), Color(0xFFD4C294));
  static const TypeColor steel = TypeColor(Color(0xFF417D9A), Color(0xFF4C91B2));
  static const TypeColor water = TypeColor(Color(0xFF4A90DA), Color(0xFF58ABF6));

  static const Color shortHeight = Color(0xFFFFC5E6);
  static const Color mediumHeight = Color(0xFFAEBFD7);
  static const Color tallHeight = Color(0xFFAAACB8);

  static const Color lightWeight = Color(0xFF99CD7C);
  static const Color normalWeight = Color(0xFF57B2DC);
  static const Color heavyWeight = Color(0xFF5A92A5);

  static const Color backgroundWhite = Color(0xFFFFFFFF);
  static const Color backgroundDefaultInput = Color(0xFFF2F2F2);
  static const Color backgroundPressedInput = Color(0xFFE2E2E2);
  static final Color backgroundModal = Color(0xFF000000).withOpacity(0.25);

  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF17171B);
  static const Color textGrey = Color(0xFF747476);
  static final Color textNumber = Color(0xFF17171B).withOpacity(0.6);

  static final Color buttonPrimary = Color(0xFFEA5D60);
  static final Color buttonUnselected = Color(0xFFF7F7F7);

  static Gradient get gradientVector => LinearGradient(
        colors: <Color>[
          Color(0xFFFFFFFF).withOpacity(0.3),
          Color(0xFFFFFFFF).withOpacity(0.0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.mirror,
//        stops: <double>[-1, 0.5],
      );

  static Gradient get gradientPokeball => LinearGradient(
        colors: <Color>[
          Color(0xFFF5F5F5),
          Color(0xFFFFFFFF),
        ],
        begin: Alignment.center,
        end: Alignment.bottomCenter,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientVectorGrey => LinearGradient(
        colors: <Color>[
          Color(0xFFE5E5E5),
          Color(0xFFF5F5F5).withOpacity(0),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientPokeballGrey => LinearGradient(
        colors: <Color>[
          Color(0xFFECECEC),
          Color(0xFFF5F5F5),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientVectorWhite => LinearGradient(
        colors: <Color>[
          white.withOpacity(0.3),
          white.withOpacity(0),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientPokeballWhite => LinearGradient(
        colors: <Color>[
          Color(0xFFFFFFFF).withOpacity(0.1),
          Color(0xFFFFFFFF).withOpacity(0),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientPokemonName => LinearGradient(
        colors: <Color>[
          Color(0xFFFFFFFF).withOpacity(0.3),
          Color(0xFFFFFFFF).withOpacity(0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        tileMode: TileMode.repeated,
      );

  static Gradient get gradientPokeballCircle => LinearGradient(
        colors: <Color>[
          Color(0xFFFFFFFF).withOpacity(0),
          Color(0xFFFFFFFF).withOpacity(0.35),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        tileMode: TileMode.repeated,
      );
}

class TypeColor {
  const TypeColor(this.primary, this.background);

  final Color primary;
  final Color background;
}
