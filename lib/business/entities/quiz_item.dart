import 'package:flamboyant/business/data/plantas.dart';
import 'package:flamboyant/business/entities/alternativa.dart';
import 'package:flamboyant/business/entities/pergunta.dart';
import 'package:flamboyant/business/entities/planta.dart';

class QuizItem {
  final String plantaIdentificacao;
  final Pergunta pergunta;
  List<Alternativa> respostas = [];

  QuizItem({required this.plantaIdentificacao, required this.pergunta});

  setResposta(Alternativa value) {
    if (respostas.contains(value)) {
      respostas.remove(value);
    } else {
      respostas.add(value);
    }
  }

  bool acertou() {
    return respostas.every((element) => element.verdadeiro == true);
  }

  Planta getPlanta() {
    return PlantaData.obterPorIdentificacao(plantaIdentificacao);
  }

  bool hasResposta() {
    return respostas.isNotEmpty;
  }

  clear() {
    respostas = [];
  }
}
