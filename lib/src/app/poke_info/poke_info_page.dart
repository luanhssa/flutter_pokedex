import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_icon_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_network_image.dart';
import 'package:flutter_pokedex/src/app/widgets/poke_about_info_tab.dart';
import 'package:flutter_pokedex/src/app/widgets/poke_background_name.dart';
import 'package:flutter_pokedex/src/app/widgets/poke_evolution_info_tab.dart';
import 'package:flutter_pokedex/src/app/widgets/poke_stats_info_tab.dart';
import 'package:flutter_pokedex/src/app/widgets/poke_tab_title.dart';
import 'package:flutter_pokedex/src/app/widgets/pokemon_short_info.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class PokeInfoPage extends StatefulWidget {
  PokeInfoPage(this.pokemon);

  final Pokemon pokemon;

  @override
  _PokeInfoPageState createState() => _PokeInfoPageState();
}

class _PokeInfoPageState extends State<PokeInfoPage> {
  int _activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.pokemon.types.first.backgroundColor,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                elevation: 0,
                pinned: false,
                floating: false,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: CustomIconImage.arrowLeft(PokedexColor.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Transform.scale(
                    scale: 0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 125,
                          height: 125,
                          child: CustomNetworkImage(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${widget.pokemon.number}.png',
                          ),
                        ),
                        PokemonShortInfo(widget.pokemon),
                      ],
                    ),
                  ),
                  background: Align(
                    alignment: Alignment.topCenter,
                    child: PokemonBackgroundName(widget.pokemon),
                  ),
                ),
                bottom: TabBar(
                  onTap: (int index) {
                    setState(() {
                      _activeTab = index;
                    });
                  },
                  labelColor: PokedexColor.white,
                  unselectedLabelColor: PokedexColor.white.withOpacity(0.5),
                  indicatorColor: widget.pokemon.types.first.backgroundColor,
                  tabs: <Widget>[
                    PokeTabTitle(
                      title: 'About',
                      active: _activeTab == 0,
                    ),
                    PokeTabTitle(
                      title: 'Stats',
                      active: _activeTab == 1,
                    ),
                    PokeTabTitle(
                      title: 'Evolution',
                      active: _activeTab == 2,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: _activeTab == 0
                  ? PokemonAboutInfoTab(widget.pokemon)
                  : _activeTab == 1
                      ? PokemonStatsInfoTab(widget.pokemon)
                      : PokemonEvolutionInfoTab(widget.pokemon),
            ),
          ),
        ),
      ),
    );
  }
}
