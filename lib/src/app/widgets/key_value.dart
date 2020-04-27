import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';

class KeyValue {
  KeyValue(this.key, String description)
      : value = Text(
          description,
          style: Styles.descriptionTitle.copyWith(
            color: PokedexColor.textGrey,
          ),
        );

  KeyValue.custom(this.key, this.value);

  final String key;
  final Widget value;
}
