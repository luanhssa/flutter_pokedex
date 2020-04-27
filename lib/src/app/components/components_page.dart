import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/generation_card_widget.dart';
import 'package:flutter_pokedex/src/app/poke_card_widget.dart';
import 'package:flutter_pokedex/src/app/poke_height.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/poke_type_badge.dart';
import 'package:flutter_pokedex/src/app/poke_weight.dart';
import 'package:flutter_pokedex/src/app/widgets/buttons/selectable_icon_button.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class ComponentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(width: 10),
                  itemBuilder: (_, int index) {
                    final PokeType type = PokeType.values[index];
                    return SelectableIconButton(
                      icon: type.icon(),
                      selectedColor: type.color,
                    );
                  },
                  itemCount: PokeType.values.length,
                ),
              ),
              Container(
                height: 60,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(width: 5),
                  itemBuilder: (_, int index) {
                    final PokeType type = PokeType.values[index];
                    return PokeTypeBadge(type: type);
                  },
                  itemCount: PokeType.values.length,
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(width: 10),
                  itemBuilder: (_, int index) {
                    final PokeWeight type = PokeWeight.values[index];
                    return SelectableIconButton(
                      icon: type.icon(),
                      selectedColor: type.color,
                    );
                  },
                  itemCount: PokeWeight.values.length,
                ),
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  separatorBuilder: (_, __) => SizedBox(width: 10),
                  itemBuilder: (_, int index) {
                    final PokeHeight type = PokeHeight.values[index];
                    return SelectableIconButton(
                      icon: type.icon(),
                      selectedColor: type.color,
                    );
                  },
                  itemCount: PokeHeight.values.length,
                ),
              ),
              PokeCardWidget(Pokemon(
                number: '001',
                name: 'Bulbasaur',
                types: <PokeType>[PokeType.grass, PokeType.poison],
              )),
              SizedBox(height: 15),
              PokeCardWidget(Pokemon(
                number: '002',
                name: 'Ivysaur',
                types: <PokeType>[PokeType.grass, PokeType.poison],
              )),
              SizedBox(height: 15),
              Container(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GenerationCardWidget(),
                    SizedBox(width: 15),
                    GenerationCardWidget(initialValue: true),
                    SizedBox(width: 15),
                    GenerationCardWidget(),
                    SizedBox(width: 15),
                    GenerationCardWidget(),
                  ],
                ),
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}
