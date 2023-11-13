import 'package:flamboyant/ui/pages/plantas/plantas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static String route = "/";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.tree,
              size: 150,
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Flamboyant",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            buttonWidget(
              'Catalogo',
              () => Modular.to.pushNamed(PlantasPage.route),
            ),
            const SizedBox(
              height: 20,
            ),
            buttonWidget('Quiz', () {}),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "v1.0.0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonWidget(String label, Function onPressed) {
    return ElevatedButton(
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        minimumSize: MaterialStatePropertyAll(Size(200, 50)),
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      onPressed: () => onPressed(),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
