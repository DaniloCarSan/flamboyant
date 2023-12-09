import 'package:flamboyant/business/entities/planta.dart';
import 'package:flutter/material.dart';

class PlantaListTileWidget extends StatelessWidget {
  final Planta planta;
  final Function(Planta) onTap;

  const PlantaListTileWidget({
    super.key,
    required this.planta,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(planta),
      leading: Image.asset(
        planta.fotoURL,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(planta.nomePopular),
      subtitle: Text(planta.nomeCientifico),
      trailing: const Icon(Icons.arrow_forward_outlined),
    );
  }
}
