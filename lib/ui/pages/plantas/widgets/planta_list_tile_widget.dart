import 'package:flamboyant/business/entities/planta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantaListTileWidget extends StatelessWidget {
  final Planta planta;
  final Function(Planta) onTap;

  const PlantaListTileWidget(
      {super.key, required this.planta, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(planta),
      leading: const Icon(FontAwesomeIcons.tree),
      title: Text(planta.nomePopular),
      subtitle: Text(planta.nomeCientifico),
      trailing: const Icon(Icons.arrow_forward_outlined),
    );
  }
}
