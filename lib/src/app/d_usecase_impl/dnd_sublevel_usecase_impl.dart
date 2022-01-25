import 'dart:math';

import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:get/get.dart';

class DnDSubLevelUseCaseImpl extends DnDSubLevelUseCase {
  ///domain almacenado para acceder a la info
  final DnDSubLevelDomain subLevelDomain;

  ///domain con la info del progreso
  final DnDSubLevelProgressDomain subLevelProgressDomain;

  List<DnDSubLevelItemDomain> items() {
    List<DnDSubLevelItemDomain> items =
        subLevelDomain.items.map((e) => e.clone()).toList();
    items.shuffle();
    return items;
  }

  DnDSubLevelUseCaseImpl({
    required this.subLevelDomain,
    required this.subLevelProgressDomain,
  });

  ///cantidad de vidas maximas del nivel
  ///no se usa como getter por si hay que ponerle logica despues con comodines que aumenten las vidas
  /// si hay algun bono se le suma aqui a las vidas y ya
  @override
  int lives() {
    return subLevelDomain.lives;
  }

  @override
  int get columns => subLevelDomain.columns;

  @override
  int get rows => subLevelDomain.rows;

  @override
  String get urlImage => subLevelDomain.urlImage;

  @override
  int get stars => subLevelProgressDomain.stars;

  void saveProgress(int stars) {
    //me quedo siempre con la mejor cantidad de estrellas
    subLevelProgressDomain.stars = max(subLevelProgressDomain.stars, stars);

    //aumento la cantidad de veces que se jugo el nivel
    subLevelProgressDomain.contPlayedTimes =
        subLevelProgressDomain.contPlayedTimes + 1;

    //salvo el progreso
    _executeProgressUpdate();
  }

  void _executeProgressUpdate() {
    Get.find<DnDSubLevelProgressUseCase>().edit(subLevelProgressDomain);
  }

  @override
  bool showTutorial() {
    return subLevelProgressDomain.dndLevelDomainId ==
            Get.find<DnDLevelUseCase>().findAll()[0].id &&
        subLevelProgressDomain.dndSubLevelDomainId ==
            Get.find<DnDLevelUseCase>().findAll()[0].sublevel[0].id;
  }

  String subLevelTheme() {
    return Get.find<DnDLevelUseCase>()
        .findAll()[subLevelProgressDomain.dndLevelDomainId]
        .theme;
  }

  int subLevelNumber() {
    return subLevelDomain.id;
  }
}
