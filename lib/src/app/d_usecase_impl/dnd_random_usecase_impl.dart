import 'dart:math';

import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

class DnDRandomUseCaseImpl extends DnDRandomUseCase {
  @override
  DnDLevelDomain randomLevel() {
    DnDLevelUseCase UC = Get.find<DnDLevelUseCase>();
    return UC.findAll()[Random().nextInt(
      UC.count(),
    )];
  }

  @override
  Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> randomSubLevel() {
    return randomSubLevelOf(randomLevel());
  }

  @override
  Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> randomSubLevelOf(
      DnDLevelDomain level) {
    DnDSubLevelDomain subLevel =
        level.sublevel[Random().nextInt(level.sublevel.length)];

    DnDSubLevelProgressDomain progress =
        Get.find<DnDSubLevelProgressUseCase>().findByAll(level, subLevel);

    return Tuple2(subLevel, progress);
  }
}
