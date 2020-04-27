import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokeballImage extends StatelessWidget {
  const PokeballImage._(this.path, this.fit);

  factory PokeballImage([BoxFit fit]) => PokeballImage._('pokeball', fit);

  factory PokeballImage.gradient([BoxFit fit]) => PokeballImage._('pokeball_gradient', fit);

  factory PokeballImage.gradientGrey([BoxFit fit]) =>
      PokeballImage._('pokeball_gradient_grey', fit);

  factory PokeballImage.gradientWhite([BoxFit fit]) =>
      PokeballImage._('pokeball_gradient_white', fit);

  factory PokeballImage.gradientVector([BoxFit fit]) =>
      PokeballImage._('pokeball_gradient_vector', fit);

  factory PokeballImage.gradientVectorGrey([BoxFit fit]) =>
      PokeballImage._('pokeball_gradient_vector_grey', fit);

  factory PokeballImage.gradientVectorWhite([BoxFit fit]) =>
      PokeballImage._('pokeball_gradient_vector_white', fit);

  final String path;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$path.svg',
      fit: fit ?? BoxFit.fitHeight,
    );
  }
}
