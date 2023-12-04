import 'package:flamboyant/business/entities/alternativa.dart';

class Pergunta {
  final String descricao;
  final List<Alternativa> alternativas;

  Pergunta({
    required this.descricao,
    required this.alternativas,
  });

  List<Alternativa> respostasCerta() {
    return alternativas.where((element) => element.verdadeiro).toList();
  }
}
