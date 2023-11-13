import 'package:flamboyant/ui/pages/planta/planta_page.dart';
import 'package:flamboyant/ui/pages/plantas/plantas_page.dart';
import 'package:flamboyant/ui/pages/home/home_page.dart';
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
  }
}
