import 'package:flamboyant/business/entities/alternativa.dart';

class Pergunta {
  final String plantaIdentificacao;
  final String descricao;
  final List<Alternativa> alternativas;

  Pergunta({
    required this.plantaIdentificacao,
    required this.descricao,
    required this.alternativas,
  });
}
