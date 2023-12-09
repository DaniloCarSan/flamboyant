import 'package:flamboyant/business/entities/quiz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizResultadoPage extends StatefulWidget {
  static String route = "/quiz_resultado";

  final Quiz quiz;

  const QuizResultadoPage({super.key, required this.quiz});

  @override
  State<QuizResultadoPage> createState() => _QuizResultadoPageState();
}

class _QuizResultadoPageState extends State<QuizResultadoPage> {
  @override
  void initState() {
    super.initState();
    widget.quiz.resultado();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Resultado")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          "${widget.quiz.acertos}",
                          style: const TextStyle(
                            fontSize: 80,
                            color: Colors.green,
                          ),
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 40,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Acertos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          "${widget.quiz.erros}",
                          style: const TextStyle(
                            fontSize: 80,
                            color: Colors.red,
                          ),
                        ),
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 40,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Erros",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const ListTile(
              title: Text(
                'Correção',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Column(
              children: widget.quiz.quiz
                  .where((element) => !element.acertou())
                  .map(
                    (e) => Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              e.pergunta.descricao,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const ListTile(
                            title: Text(
                              'Resposta(s) selecionada(s): ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ...e.respostas
                              .map((e) => ListTile(
                                    leading: Icon(FontAwesomeIcons.circleDot),
                                    title: Text(e.descricao),
                                  ))
                              .toList(),
                          const ListTile(
                            title: Text(
                              'Resposta(s) correta(s): ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ...e.pergunta
                              .respostasCerta()
                              .map((e) => ListTile(
                                    leading: Icon(FontAwesomeIcons.circleDot),
                                    title: Text(e.descricao),
                                  ))
                              .toList()
                        ],
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
