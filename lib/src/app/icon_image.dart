import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconImage extends StatelessWidget {
  IconImage(this.assetPath, {this.color, this.size = 30});

  final String assetPath;
  Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: SvgPicture.asset(
        assetPath,
        color: color,
      ),
    );
  }
}
