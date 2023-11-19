import 'package:flamboyant/business/entities/quiz.dart';
import 'package:flamboyant/ui/pages/plantas/plantas_page.dart';
import 'package:flamboyant/ui/pages/quiz_item/quiz_item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  static String route = "/";

  const HomePage({super.key});

  goQuiz(BuildContext context) {
    var quiz = Quiz(pergutasTotal: 10);
    quiz.gerar();
    Modular.to.pushNamed(QuizItemPage.route, arguments: quiz);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Image.asset(
                  './assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Esalq",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Flamboyant",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              buttonWidget(
                'Catalogo',
                () => Modular.to.pushNamed(PlantasPage.route),
              ),
              const SizedBox(
                height: 20,
              ),
              buttonWidget('Quiz', () => goQuiz(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonWidget(String label, Function onPressed) {
    return ElevatedButton(
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        minimumSize: MaterialStatePropertyAll(Size(200, 50)),
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      onPressed: () => onPressed(),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
