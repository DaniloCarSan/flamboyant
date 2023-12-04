import 'package:flamboyant/business/entities/planta.dart';
import 'package:flamboyant/business/data/plantas.dart';
import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flamboyant/ui/pages/plantas/widgets/planta_list_tile_widget.dart';
import 'package:flamboyant/ui/pages/plantas/widgets/search_planta_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PlantasPage extends StatelessWidget {
  static String route = "/plantas";

  const PlantasPage({super.key});

  void search(BuildContext context) async {
    await showSearch(
      context: context,
      delegate: SearchPlantaWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogo"),
        actions: const [
          // IconButton(
          //   icon: const Icon(Icons.search),
          //   onPressed: () => search(context),
          // ),
        ],
      ),
      body: ListView.separated(
        itemCount: PlantaData.ordenada().length,
        separatorBuilder: (context, index) => const Divider(
          height: 0,
        ),
        itemBuilder: (context, index) {
          Planta planta = PlantaData.ordenada().elementAt(index);
          return PlantaListTileWidget(
            planta: planta,
            onTap: (planta) => Modular.to.pushNamed(
              PlantaPage.route,
              arguments: planta,
            ),
          );
        },
      ),
    );
  }
}
