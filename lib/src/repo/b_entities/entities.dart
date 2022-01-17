import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity() // flutter pub run build_runner build
class DnDLevelProgressEntity extends BasicEntityObject {
  @Id()
  int id;

  //@Unique(onConflict: ConflictStrategy.replace)
  final int dndLevelId;

  @Backlink()
  final dndSubLevelProgress = ToMany<DnDSubLevelProgressEntity>();

  //default construct, DON'T REMOVE
  DnDLevelProgressEntity({
    required this.dndLevelId,
    this.id = 0,
  });

  //the one to use
  DnDLevelProgressEntity.build({
    required this.dndLevelId,
    required List<DnDSubLevelProgressEntity> subLevelsProgress,
    this.id = 0,
  }) {
    dndSubLevelProgress.addAll(subLevelsProgress);
  }
}

@Entity() //flutter pub run build_runner build
class DnDSubLevelProgressEntity extends BasicEntityObject {
  @Id()
  int id;

  int dndSubLevelId;

  final dndLevelProgressFK = ToOne<DnDLevelProgressEntity>();

  int contPlayedTimes;

  int stars;

  //default construct, DON'T REMOVE
  DnDSubLevelProgressEntity({
    required this.dndSubLevelId,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  });

  //the one to use
  DnDSubLevelProgressEntity.build({
    required this.dndSubLevelId,
    required int dndLevelProgressEntityId,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  }) {
    this.dndLevelProgressFK.targetId = dndLevelProgressEntityId;
  }
}
