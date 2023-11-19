import 'package:flamboyant/business/entities/alternativa.dart';

class Pergunta {
  final String descricao;
  final List<Alternativa> alternativas;

  Pergunta({
    required this.descricao,
    required this.alternativas,
  });

  Alternativa respostaCerta() {
    return alternativas.firstWhere((element) => element.verdadeiro);
  }
}
