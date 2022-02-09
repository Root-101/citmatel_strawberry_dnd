import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DnDLevelsAll {
  static final List<DnDLevelDomain> levels = [
    DnDLevelTutorial.tutorial,
    DnDLevel1.level1,
    DnDLevelScience.levelCiencias,
    DnDLevel1.level1.clone()..id = 3,
    DnDLevel1.level1.clone()..id = 4,
    DnDLevel1.level1.clone()..id = 5,
    DnDLevel1.level1.clone()..id = 6,
    DnDLevel1.level1.clone()..id = 7,
    DnDLevel1.level1.clone()..id = 8,
    DnDLevel1.level1.clone()..id = 9,
    DnDLevel1.level1.clone()..id = 10,
  ];
}
