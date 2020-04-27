import 'package:flutter_pokedex/src/app/filter_stats.dart';

class Filter<T extends FilterStats> {
  Filter(this.item, {this.selected = false, this.onPressed});

  final T item;
  final Function(bool selected) onPressed;
  bool selected;

  static List<Filter> fromList<E extends FilterStats>(List<E> list) => List<Filter<E>>.from(
        list.map((E e) => Filter<E>(e)),
      );
}
