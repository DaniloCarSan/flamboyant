import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flamboyant/ui/pages/plantas/plantas_page.dart';
import 'package:flamboyant/ui/pages/home/home_page.dart';
import 'package:flamboyant/ui/pages/quiz_item/quiz_item_page.dart';
import 'package:flamboyant/ui/pages/quiz_resultado/quiz_resultado_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      HomePage.route,
      child: (context) => const HomePage(),
    );
    r.child(
      PlantasPage.route,
      child: (context) => const PlantasPage(),
    );
    r.child(
      PlantaPage.route,
      child: (context) => PlantaPage(planta: r.args.data),
    );
    r.child(
      QuizItemPage.route,
      child: (context) => QuizItemPage(quiz: r.args.data),
    );
    r.child(
      QuizResultadoPage.route,
      child: (context) => QuizResultadoPage(quiz: r.args.data),
    );
  }
}
