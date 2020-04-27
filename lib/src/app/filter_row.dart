import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/filter.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/buttons/selectable_icon_button.dart';

class FilterRow extends StatelessWidget {
  FilterRow({@required this.title, @required this.filters});

  final String title;
  final List<Filter> filters;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            title,
            style: Styles.filterTitle.copyWith(
              color: PokedexColor.textBlack,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 85,
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: filters.length,
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemBuilder: (_, int index) {
              final Filter filter = filters[index];
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 40)
                    : index == PokeType.values.length - 1
                        ? const EdgeInsets.only(right: 40)
                        : EdgeInsets.zero,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SelectableIconButton(
                    icon: filter.item.icon(),
                    selectedColor: filter.item.color,
                    onPressed: (bool selected) {
                      if (filter.onPressed != null) {
                        filter.onPressed(selected);
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
