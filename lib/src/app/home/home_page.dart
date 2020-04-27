import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/filter.dart';
import 'package:flutter_pokedex/src/app/filter_row.dart';
import 'package:flutter_pokedex/src/app/generation_card_widget.dart';
import 'package:flutter_pokedex/src/app/poke_card_widget.dart';
import 'package:flutter_pokedex/src/app/poke_height.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/poke_weight.dart';
import 'package:flutter_pokedex/src/app/range_slider_statefull.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_icon_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pokeball_image.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';
import 'package:getflutter/getflutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final List<Pokemon> pokes = <Pokemon>[
    Pokemon(
      number: '001',
      name: 'Bulbasaur',
      types: <PokeType>[PokeType.grass, PokeType.poison],
      evolutions: <Pokemon>[
        Pokemon(
          number: '002',
          name: 'Ivysaur',
          types: <PokeType>[PokeType.grass, PokeType.poison],
        ),
      ],
    ),
    Pokemon(
      number: '002',
      name: 'Ivysaur',
      types: <PokeType>[PokeType.grass, PokeType.poison],
    ),
    Pokemon(
      number: '003',
      name: 'Venusaur',
      types: <PokeType>[PokeType.grass, PokeType.poison],
    ),
    Pokemon(
      number: '004',
      name: 'Charmander',
      types: <PokeType>[PokeType.fire],
    ),
    Pokemon(
      number: '005',
      name: 'Charmeleon',
      types: <PokeType>[PokeType.fire],
    ),
    Pokemon(
      number: '006',
      name: 'Charizard',
      types: <PokeType>[PokeType.fire, PokeType.flying],
    ),
    Pokemon(
      number: '007',
      name: 'Squirtle',
      types: <PokeType>[PokeType.water],
    ),
    Pokemon(
      number: '008',
      name: 'Wartortle',
      types: <PokeType>[PokeType.water],
    ),
    Pokemon(
      number: '009',
      name: 'Blastoise',
      types: <PokeType>[PokeType.water],
    ),
    Pokemon(
      number: '010',
      name: 'Caterpie',
      types: <PokeType>[PokeType.bug],
    ),
    Pokemon(
      number: '011',
      name: 'Metapod',
      types: <PokeType>[PokeType.bug],
    ),
    Pokemon(
      number: '012',
      name: 'Butterfree',
      types: <PokeType>[PokeType.bug, PokeType.flying],
    ),
    Pokemon(
      number: '013',
      name: 'Weedle',
      types: <PokeType>[PokeType.bug, PokeType.flying],
    ),
    Pokemon(
      number: '014',
      name: 'Kakuna',
      types: <PokeType>[PokeType.bug, PokeType.flying],
    ),
    Pokemon(
      number: '015',
      name: 'Beedrill',
      types: <PokeType>[PokeType.bug, PokeType.flying],
    ),
    Pokemon(
      number: '016',
      name: 'Pidgey',
      types: <PokeType>[PokeType.normal, PokeType.flying],
    ),
    Pokemon(
      number: '017',
      name: 'Pidgeotto',
      types: <PokeType>[PokeType.normal, PokeType.flying],
    ),
    Pokemon(
      number: '018',
      name: 'Pidgeot',
      types: <PokeType>[PokeType.normal, PokeType.flying],
    ),
    Pokemon(
      number: '019',
      name: 'Rattata',
      types: <PokeType>[PokeType.normal],
    ),
    Pokemon(
      number: '020',
      name: 'Raticate',
      types: <PokeType>[PokeType.normal],
    ),
    Pokemon(
      number: '021',
      name: 'Spearow',
      types: <PokeType>[PokeType.normal, PokeType.flying],
    ),
    Pokemon(
      number: '022',
      name: 'Fearow',
      types: <PokeType>[PokeType.normal, PokeType.flying],
    ),
    Pokemon(
      number: '023',
      name: 'Ekans',
      types: <PokeType>[PokeType.poison],
    ),
    Pokemon(
      number: '024',
      name: 'Arbok',
      types: <PokeType>[PokeType.poison],
    ),
    Pokemon(
      number: '025',
      name: 'Pikachu',
      types: <PokeType>[PokeType.electric],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            elevation: 0,
            pinned: false,
            floating: false,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  PokeballImage.gradient(),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            'Pokedex',
                            style: Styles.applicationTitle.copyWith(
                              color: PokedexColor.textBlack,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            'Search for Pokémon by name or using the National Pokédex number.',
                            style: Styles.descriptionTitle.copyWith(
                              color: PokedexColor.textGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              centerTitle: false,
              collapseMode: CollapseMode.none,
//              title: Text(
//                'Pokedex',
//                style: Styles.applicationTitle.copyWith(
//                  color: PokedexColor.textBlack,
//                ),
//              ),
            ),
            actions: <Widget>[
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: CustomIconImage.generation(),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        elevation: 10,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        builder: (_) {
                          return SingleChildScrollView(
                            padding: const EdgeInsets.only(
                              top: 30,
                              left: 40,
                              right: 40,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Generations',
                                  style: Styles.pokemonName.copyWith(
                                    color: PokedexColor.textBlack,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Use search for generations to explore your Pokémon!',
                                  style: Styles.descriptionTitle.copyWith(
                                    color: PokedexColor.textGrey,
                                  ),
                                ),
                                SizedBox(height: 35),
                                Wrap(
                                  spacing: 14,
                                  runSpacing: 14,
                                  children: <Widget>[
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                    GenerationCardWidget(),
                                  ],
                                ),
                                SizedBox(height: 100),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 5),
              IconButton(
                icon: CustomIconImage.sort(),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    elevation: 10,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    builder: (_) {
                      return SingleChildScrollView(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 40,
                          right: 40,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sort',
                              style: Styles.pokemonName.copyWith(
                                color: PokedexColor.textBlack,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Sort Pokémons alphabetically or by National Pokédex number!',
                              style: Styles.descriptionTitle.copyWith(
                                color: PokedexColor.textGrey,
                              ),
                            ),
                            SizedBox(height: 35),
                            GFButton(
                              blockButton: true,
                              size: 60,
                              color: PokedexColor.buttonPrimary,
                              borderShape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              text: 'Smallest number first',
                              textStyle: Styles.descriptionTitle.copyWith(
                                color: PokedexColor.white,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(height: 20),
                            GFButton(
                              blockButton: true,
                              size: 60,
                              color: PokedexColor.backgroundDefaultInput,
                              borderShape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              text: 'Highest number first',
                              textStyle: Styles.descriptionTitle.copyWith(
                                color: PokedexColor.textBlack,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(height: 20),
                            GFButton(
                              blockButton: true,
                              size: 60,
                              color: PokedexColor.backgroundDefaultInput,
                              borderShape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              text: 'A-Z',
                              textStyle: Styles.descriptionTitle.copyWith(
                                color: PokedexColor.textBlack,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(height: 20),
                            GFButton(
                              blockButton: true,
                              size: 60,
                              color: PokedexColor.backgroundDefaultInput,
                              borderShape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              text: 'Z-A',
                              textStyle: Styles.descriptionTitle.copyWith(
                                color: PokedexColor.textBlack,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(height: 100),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 5),
              IconButton(
                icon: CustomIconImage.filter(),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    elevation: 10,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    builder: (_) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 40,
                              ),
                              child: Text(
                                'Filters',
                                style: Styles.pokemonName.copyWith(
                                  color: PokedexColor.textBlack,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Use advanced search to explore Pokémon by type, weakness, height and more!',
                                style: Styles.descriptionTitle.copyWith(
                                  color: PokedexColor.textGrey,
                                ),
                              ),
                            ),
                            SizedBox(height: 35),
                            FilterRow(
                              title: 'Types',
                              filters: Filter.fromList<PokeType>(PokeType.values),
                            ),
                            FilterRow(
                              title: 'Weaknesses',
                              filters: Filter.fromList<PokeType>(PokeType.values),
                            ),
                            FilterRow(
                              title: 'Heights',
                              filters: Filter.fromList<PokeHeight>(PokeHeight.values),
                            ),
                            FilterRow(
                              title: 'Weights',
                              filters: Filter.fromList<PokeWeight>(PokeWeight.values),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'Number Range',
                                style: Styles.filterTitle.copyWith(
                                  color: PokedexColor.textBlack,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: RangeSliderStateful(
                                min: 1,
                                max: 890,
                                onChanged: (RangeValues values) {},
                              ),
                            ),
                            SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: 160,
                                    child: GFButton(
                                      blockButton: true,
                                      size: 60,
                                      color: PokedexColor.backgroundDefaultInput,
                                      borderShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      text: 'Reset',
                                      textStyle: Styles.descriptionTitle.copyWith(
                                        color: PokedexColor.textBlack,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: GFButton(
                                      size: 60,
                                      elevation: 3,
                                      blockButton: true,
                                      color: PokedexColor.buttonPrimary,
                                      borderShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      text: 'Apply',
                                      textStyle: Styles.descriptionTitle.copyWith(
                                        color: PokedexColor.textBlack,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 100),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 40),
            ],
          ),
          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: pokes.length,
              separatorBuilder: (_, __) => SizedBox(height: 5),
              itemBuilder: (_, int index) {
                final Pokemon poke = pokes[index];
                return PokeCardWidget(poke);
              },
            ),
          ),
        ],
      ),
    );
  }
}
