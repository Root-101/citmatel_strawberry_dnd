import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

class DnDLevelControllerImpl extends DnDLevelController {
  final DnDLevelUseCase levelUseCase = Get.find<DnDLevelUseCase>();

  @override
  List<DnDLevelDomain> findAll() {
    return levelUseCase.findAll();
  }

  @override
  DnDLevelDomain findBy(int keyId) {
    return levelUseCase.findBy(keyId);
  }

  @override
  int count() {
    return levelUseCase.count();
  }

  @override
  int maxStars(DnDLevelDomain levelDomain) {
    return levelDomain.sublevel.length * DnDSubLevelController.MAX_STARS;
  }

  @override
  int winedStars(DnDLevelDomain levelDomain) {
    return Get.find<DnDSubLevelProgressUseCase>()
        .findByLevelId(levelDomain.id)
        .fold(
          0,
          (previousValue, element) => previousValue + element.stars,
        );
  }

  @override
  int maxStarsAll() {
    //recorro todos los niveles, y empezando en 0, voy sumando la cantidad maxima de estrellas de cada nivel
    return levelUseCase.findAll().fold(
      0,
      (previousValue, level) {
        return previousValue + maxStars(level);
      },
    );
  }

  @override
  int winedStarsAll() {
    //recorro todos los niveles, y empezando en 0, voy sumando la cantidad de estrellas ganadas en cada nivel
    return levelUseCase.findAll().fold(
      0,
      (previousValue, level) {
        return previousValue + winedStars(level);
      },
    );
  }

  @override
  Widget randomSubLevel() {
    Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> tuple =
        Get.find<DnDRandomUseCase>().randomSubLevel();
    print(tuple);
    return DnDSubLevelLoading(
      subLevelDomain: tuple.item1,
      subLevelProgressDomain: tuple.item2,
    );
  }

  @override
  Widget randomSubLevelOf(DnDLevelDomain level) {
    Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> tuple =
        Get.find<DnDRandomUseCase>().randomSubLevelOf(level);
    return DnDSubLevelLoading(
      subLevelDomain: tuple.item1,
      subLevelProgressDomain: tuple.item2,
    );
  }
}
