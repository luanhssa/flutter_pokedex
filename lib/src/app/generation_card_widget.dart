import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/images/generations_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pattern_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pokeball_image.dart';

class GenerationCardWidget extends StatefulWidget {
  GenerationCardWidget({this.onPressed, this.initialValue = false});

  final Function(bool) onPressed;
  final bool initialValue;

  @override
  _GenerationCardWidgetState createState() => _GenerationCardWidgetState();
}

class _GenerationCardWidgetState extends State<GenerationCardWidget> {
  bool selected;

  @override
  void initState() {
    super.initState();

    setState(() {
      selected = widget.initialValue;
    });
  }

  void onPressed() {
    setState(() {
      selected = !selected;
    });
    if (widget.onPressed != null) {
      widget.onPressed(selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: 160,
        height: 129,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected ? PokedexColor.buttonPrimary : PokedexColor.backgroundDefaultInput,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: 160,
              height: 129,
            ),
            Positioned(
              top: 10,
              left: 15,
              child:
                  selected ? PatternImage.gradientVectorWhite() : PatternImage.gradientVectorGrey(),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: selected ? PokeballImage.gradientWhite() : PokeballImage.gradientGrey(),
            ),
            Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: GenerationImage.one(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Generation I',
                  style: Styles.descriptionTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
