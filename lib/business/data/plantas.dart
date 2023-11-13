import 'package:flamboyant/business/entities/caracteristica.dart';
import 'package:flamboyant/business/entities/planta.dart';

List<Planta> plantasData = [
  Planta(
    foto: "canelinha",
    identificacao: "canelinha",
    nomePopular: "Canelinha",
    nomeCientifico: "Nectandra megapotamica",
    familia: "Lauraceae",
    vegetativas: [
      Caracteristica("Folha simples"),
      Caracteristica("Alterna espiralada"),
      Caracteristica("Sem estípula"),
      Caracteristica("Bordo liso"),
      Caracteristica("Odorífera"),
    ],
    reprodutivas: [
      Caracteristica("Flor monoclina"),
      Caracteristica("Actinomorfa"),
      Caracteristica("diclamídea"),
      Caracteristica("homoclamídea"),
      Caracteristica("flores trímeras"),
      Caracteristica("muitos verticilos florais"),
      Caracteristica("muitos estames com antera valvar"),
    ],
  ),
];
