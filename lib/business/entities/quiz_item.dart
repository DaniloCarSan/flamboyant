import 'package:flamboyant/business/data/plantas.dart';
import 'package:flamboyant/business/entities/alternativa.dart';
import 'package:flamboyant/business/entities/pergunta.dart';
import 'package:flamboyant/business/entities/planta.dart';

class QuizItem {
  final String plantaIdentificacao;
  final Pergunta pergunta;
  Alternativa? resposta;

  QuizItem({required this.plantaIdentificacao, required this.pergunta});

  setResposta(Alternativa value) {
    resposta = value;
  }

  bool acertou() {
    return resposta!.verdadeiro;
  }

  Planta getPlanta() {
    return PlantaData.obterPorIdentificacao(plantaIdentificacao);
  }

  bool hasResposta() {
    return resposta != null;
  }
}
