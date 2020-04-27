import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pokeball_image.dart';

class PokeTabTitle extends StatelessWidget {
  const PokeTabTitle({@required this.title, this.active = false});

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Stack(
        children: <Widget>[
          Center(
            child: Text(
              title,
              style: Styles.filterTitle,
            ),
          ),
          if (active)
            Positioned(
              top: 0,
              child: Container(
                width: 100,
                height: 100,
                child: PokeballImage.gradientVectorWhite(),
              ),
            ),
        ],
      ),
    );
  }
}
