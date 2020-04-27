import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatternImage extends StatelessWidget {
  const PatternImage() : path = 'pattern';

  const PatternImage.gradientVector() : path = 'pattern_gradient_vector';

  const PatternImage.gradientVectorGrey() : path = 'pattern_gradient_vector_grey';

  const PatternImage.gradientVectorWhite() : path = 'pattern_gradient_vector_white';

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        'assets/svg/$path.svg',
      ),
    );
  }
}
