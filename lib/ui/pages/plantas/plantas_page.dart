import 'package:flamboyant/business/entities/planta.dart';
import 'package:flamboyant/business/data/plantas.dart';
import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantasPage extends StatelessWidget {
  static String route = "/plantas";

  const PlantasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogo"),
      ),
      body: ListView.separated(
        itemCount: plantasData.length,
        separatorBuilder: (context, index) => const Divider(
          height: 0,
        ),
        itemBuilder: (context, index) {
          Planta planta = plantasData.elementAt(index);

          return ListTile(
            onTap: () => Modular.to.pushNamed(
              PlantaPage.route,
              arguments: planta,
            ),
            leading: const Icon(FontAwesomeIcons.tree),
            title: Text(planta.nomePopular),
            subtitle: Text(planta.nomeCientifico),
            trailing: const Icon(Icons.arrow_forward_outlined),
          );
        },
      ),
    );
  }
}
