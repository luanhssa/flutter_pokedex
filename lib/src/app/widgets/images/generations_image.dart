import 'package:flutter/material.dart';

class GenerationImage extends StatelessWidget {
  GenerationImage.one() : generation = 1;

  GenerationImage.two() : generation = 2;

  GenerationImage.three() : generation = 3;

  GenerationImage.four() : generation = 4;

  GenerationImage.five() : generation = 5;

  GenerationImage.six() : generation = 6;

  GenerationImage.seven() : generation = 7;

  GenerationImage.eight() : generation = 8;

  final int generation;

  final List<List<String>> generations = <List<String>>[
    <String>['001', '004', '007'],
    <String>['152', '155', '158'],
    <String>['001', '004', '007'],
    <String>['001', '004', '007'],
    <String>['001', '004', '007'],
    <String>['001', '004', '007'],
    <String>['001', '004', '007'],
    <String>['001', '004', '007'],
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> gens = generations[generation - 1];
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(
          3,
          (int index) {
            final String gen = gens[index];
            return Container(
              width: 45,
              height: 45,
              child: Image.network(
                'https://assets.pokemon.com/assets/cms2/img/pokedex/full/$gen.png',
              ),
            );
          },
        ),
//        children: <Widget>[
//          Container(
//            width: 45,
//            height: 45,
//            child: Image.network(
//              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png',
//            ),
//          ),
//          Container(
//            width: 45,
//            height: 45,
//            child: Image.network(
//              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
//            ),
//          ),
//          Container(
//            width: 45,
//            height: 45,
//            child: Image.network(
//              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png',
//            ),
//          ),
//        ],
      ),
    );
  }
}
