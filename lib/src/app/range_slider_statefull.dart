import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';

class RangeSliderStateful extends StatefulWidget {
  RangeSliderStateful({@required this.min, @required this.max, this.onChanged});

  final double min;
  final double max;
  final Function(RangeValues rangeValues) onChanged;

  @override
  _RangeSliderStatefulState createState() => _RangeSliderStatefulState();
}

class _RangeSliderStatefulState extends State<RangeSliderStateful> {
  RangeValues rangeValues;

  @override
  void initState() {
    super.initState();
    setState(() {
      rangeValues = RangeValues(widget.min, widget.max);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        rangeThumbShape: _CustomRangeThumbShape(),
        valueIndicatorTextStyle: Styles.pokemonType.copyWith(
          color: PokedexColor.white,
        ),
        showValueIndicator: ShowValueIndicator.always,
        valueIndicatorShape: SliderComponentShape.noThumb,
      ),
      child: RangeSlider(
        onChanged: (RangeValues values) {
          setState(() {
            rangeValues = RangeValues(values.start.floorToDouble(), values.end.floorToDouble());
          });
          if (widget.onChanged != null) {
            widget.onChanged(rangeValues);
          }
        },
        values: rangeValues,
        min: widget.min,
        max: widget.max,
        activeColor: PokedexColor.buttonPrimary,
        inactiveColor: PokedexColor.backgroundDefaultInput,
        labels:
            RangeLabels(rangeValues.start.toStringAsFixed(0), rangeValues.end.toStringAsFixed(0)),
      ),
    );
  }
}

class _CustomRangeThumbShape extends RangeSliderThumbShape {
  static const double _thumbSize = 20.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size(_thumbSize, _thumbSize);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    @required Animation<double> activationAnimation,
    @required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop,
    @required SliderThemeData sliderTheme,
    TextDirection textDirection,
    Thumb thumb,
  }) {
    final Canvas canvas = context.canvas;

    Path outerThumbPath;
    Path innerThumbPath;
    switch (textDirection) {
      case TextDirection.rtl:
      case TextDirection.ltr:
        switch (thumb) {
          case Thumb.start:
          case Thumb.end:
            outerThumbPath = _thumb(_thumbSize, center);
            innerThumbPath = _thumb(_thumbSize / 2, center);
            break;
        }
    }
    canvas.drawPath(outerThumbPath, Paint()..color = sliderTheme.thumbColor);
    canvas.drawShadow(outerThumbPath, sliderTheme.thumbColor.withOpacity(0.3), 10, false);
    canvas.drawPath(innerThumbPath, Paint()..color = Colors.white);
  }

  Path _thumb(double size, Offset thumbCenter) {
    final Rect rect = Rect.fromCenter(
      center: thumbCenter,
      width: size,
      height: size,
    );
    final Path thumbPath = Path();
    thumbPath.addRRect(RRect.fromRectAndRadius(rect, Radius.circular(size * 2)));
    thumbPath.close();
    return thumbPath;
  }
}
