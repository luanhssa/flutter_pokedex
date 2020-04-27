import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

class SelectableIconButton extends StatefulWidget {
  const SelectableIconButton({
    @required this.icon,
    @required this.selectedColor,
    this.unselectedColor = PokedexColor.white,
    this.onPressed,
  });

  final IconImage icon;
  final Color selectedColor;
  final Color unselectedColor;
  final Function(bool) onPressed;

  @override
  _SelectableIconButtonState createState() => _SelectableIconButtonState();
}

class _SelectableIconButtonState extends State<SelectableIconButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final Color iconColor = selected ? widget.unselectedColor : widget.selectedColor;
    final Color backgroundColor = selected ? widget.selectedColor : Colors.transparent;
    final ShapeBorder shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
    return Container(
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: 50,
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          if (selected)
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 20,
              color: widget.selectedColor.withOpacity(0.3),
            ),
        ],
      ),
      child: FlatButton(
        shape: shape,
        padding: EdgeInsets.zero,
        color: backgroundColor,
        child: IconImage(widget.icon.assetPath, color: iconColor),
        onPressed: () => onPressed(),
      ),
    );
  }

  void onPressed() {
    print('${DateTime.now()} clicked ${!selected}');
    setState(() {
      selected = !selected;
    });
    if (widget.onPressed != null) {
      widget.onPressed(selected);
    }
  }
}
