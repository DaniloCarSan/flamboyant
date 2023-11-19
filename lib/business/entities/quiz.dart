import 'dart:math';

import 'package:flamboyant/business/data/quiz_items.dart';
import 'package:flamboyant/business/entities/quiz_item.dart';

class Quiz {
  final int pergutasTotal;
  late List<QuizItem> quiz;
  int acertos = 0;
  int erros = 0;
  int currentItem = 0;

  Quiz({required this.pergutasTotal});

  void gerar() {
    List<int> numerosSorteados = [];

    var random = Random();

    for (int i = 0; i < pergutasTotal; i++) {
      int numeroSorteado = random.nextInt(quizItemsData.length);

      if (!numerosSorteados.contains(numeroSorteado)) {
        numerosSorteados.add(numeroSorteado);
      } else {
        i--;
      }
    }

    quiz = numerosSorteados
        .map((index) => quizItemsData.elementAt(index))
        .toList();
  }

  resultado() {
    for (var element in quiz) {
      if (element.acertou()) {
        acertos += 1;
      } else {
        erros += 1;
      }
    }
  }

  QuizItem getCurrentQuizItem() {
    return quiz.elementAt(currentItem);
  }

  void setCurrentQuizItem(QuizItem quizItem) {
    quiz[currentItem] = quizItem;
  }

  nextQuizItem() {
    currentItem += 1;
  }

  backQuizItem() {
    currentItem -= 1;
  }

  bool quizEnd() {
    return currentItem == (pergutasTotal - 1);
  }

  int getCurrentItemLabel() {
    return currentItem + 1;
  }
}
