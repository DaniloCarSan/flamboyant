import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flamboyant/business/entities/planta.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantaPage extends StatelessWidget {
  final Planta planta;
  static String route = "/planta";

  const PlantaPage({
    super.key,
    required this.planta,
  });

  void viewFoto(BuildContext context) {
    final imageProvider = Image.asset(planta.fotoURL).image;
    showImageViewer(context, imageProvider, onViewerDismissed: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planta.nomePopular),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                  child: Image.asset(
                    planta.fotoURL,
                    fit: BoxFit.cover,
                  ),
                  onTap: () => viewFoto(context),
                ),
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nome popular: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(planta.nomePopular)
                ],
              ),
            ),
            const Divider(
              height: 0,
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nome ciêntifico: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(planta.nomeCientifico)
                ],
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: const ListTile(
                title: Text(
                  'Características Reprodutivas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            buildReprodutivas(),
            Container(
              color: Theme.of(context).primaryColor,
              child: const ListTile(
                title: Text(
                  'Características Vegetativas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            buildVegetativas(),
          ],
        ),
      ),
    );
  }

  Widget buildReprodutivas() {
    return Column(
      children: planta.reprodutivas
          .map(
            (e) => Column(
              children: [
                const Divider(
                  height: 0,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.minus),
                  title: Text(e.nome),
                )
              ],
            ),
          )
          .toList(),
    );
  }

  Widget buildVegetativas() {
    return Column(
      children: planta.vegetativas
          .map(
            (e) => Column(
              children: [
                const Divider(
                  height: 0,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.minus),
                  title: Text(e.nome),
                )
              ],
            ),
          )
          .toList(),
    );
  }
}
