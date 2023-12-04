import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flamboyant/business/entities/quiz.dart';
import 'package:flamboyant/business/entities/quiz_item.dart';
import 'package:flamboyant/ui/pages/home/home_page.dart';
import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flamboyant/ui/pages/quiz_resultado/quiz_resultado_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizItemPage extends StatefulWidget {
  static String route = "/quiz_item";

  final Quiz quiz;

  const QuizItemPage({super.key, required this.quiz});

  @override
  State<QuizItemPage> createState() => _QuizItemPageState();
}

class _QuizItemPageState extends State<QuizItemPage> {
  late QuizItem quizItem;

  @override
  void initState() {
    super.initState();
    quizItem = widget.quiz.getCurrentQuizItem();
  }

  proximaPergunta(BuildContext context) {
    widget.quiz.setCurrentQuizItem(quizItem);
    widget.quiz.nextQuizItem();
    Modular.to.pushNamed(QuizItemPage.route, arguments: widget.quiz);
  }

  quizResultado(BuildContext context) {
    Modular.to.pushNamedAndRemoveUntil(
      QuizResultadoPage.route,
      ModalRoute.withName(HomePage.route),
      arguments: widget.quiz,
    );
  }

  void viewFoto(BuildContext context) {
    final imageProvider = Image.asset(quizItem.getPlanta().fotoURL).image;
    showImageViewer(context, imageProvider, onViewerDismissed: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Pergunta ${widget.quiz.getCurrentItemLabel()}/${widget.quiz.pergutasTotal}"),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.tree),
            onPressed: () => Modular.to.pushNamed(
              PlantaPage.route,
              arguments: quizItem.getPlanta(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  quizItem.getPlanta().nomePopular,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                ),
                child: GestureDetector(
                  child: Image.asset(
                    quizItem.getPlanta().fotoURL,
                    fit: BoxFit.cover,
                  ),
                  onTap: () => viewFoto(context),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  quizItem.pergunta.descricao,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            Column(
              children: quizItem.pergunta.alternativas
                  .map(
                    (alternativa) => ListTile(
                      leading: Checkbox(
                        value: quizItem.hasResposta()
                            ? alternativa.descricao ==
                                quizItem.resposta!.descricao
                            : false,
                        onChanged: (v) {
                          setState(() {
                            quizItem.setResposta(alternativa);
                          });
                        },
                      ),
                      title: Text(alternativa.descricao),
                      onTap: () {
                        setState(() {
                          quizItem.setResposta(alternativa);
                        });
                      },
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: quizItem.hasResposta()
          ? FloatingActionButton(
              onPressed: () => widget.quiz.quizEnd()
                  ? quizResultado(context)
                  : proximaPergunta(context),
              child: Icon(
                  widget.quiz.quizEnd() ? Icons.check : Icons.arrow_forward),
            )
          : null,
    );
  }
}
