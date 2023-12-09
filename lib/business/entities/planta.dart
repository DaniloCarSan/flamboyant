import 'package:flamboyant/business/entities/caracteristica.dart';

class Planta {
  final String identificacao;
  final String foto;
  final String nomePopular;
  final String nomeCientifico;
  final String familia;
  final List<Caracteristica> vegetativas;
  final List<Caracteristica> reprodutivas;

  Planta({
    required this.identificacao,
    required this.foto,
    required this.nomePopular,
    required this.nomeCientifico,
    required this.familia,
    required this.vegetativas,
    required this.reprodutivas,
  });

  String get fotoURL => "./assets/images/plantas/$foto.jpg";
}
