import 'package:flamboyant/business/data/plantas.dart';
import 'package:flamboyant/business/entities/planta.dart';
import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flamboyant/ui/pages/plantas/widgets/planta_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchPlantaWidget extends SearchDelegate {
  final plantas = PlantaData.ordenada();

  List<Planta> filtrar() {
    return plantas
        .where((planta) =>
            planta.nomePopular.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Widget buildListWidget(List<Planta> lista) {
    return ListView.builder(
      itemCount: lista.length,
      itemBuilder: (context, index) {
        Planta planta = PlantaData.ordenada().elementAt(index);

        return PlantaListTileWidget(
          planta: planta,
          onTap: (planta) => Modular.to.popAndPushNamed(
            PlantaPage.route,
            arguments: planta,
          ),
        );
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildListWidget(filtrar());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildListWidget(query.isEmpty ? [] : filtrar());
  }
}
