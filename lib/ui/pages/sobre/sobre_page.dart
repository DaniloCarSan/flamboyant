import 'package:flamboyant/configs.dart';
import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  static String route = "/sobre";

  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text(
              faculdaseNick,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              faculdade,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Text(
              "Versão:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(versionApp),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              "Disciplina:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(disciplina),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              "Desenvolvido por:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(desenvolvedor),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text(
              "Contato:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(contato),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Lançamento: $lancamento",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
