import 'package:clean_core/clean_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity() // flutter pub run build_runner build
class DnDLevelProgressEntity extends BasicEntityObject {
  @Id()
  int id;

  final int dndLevelId;

  @Backlink()
  final ToMany<DnDSubLevelProgressEntity> dndSubLevelProgress;

  //default construct, DON'T REMOVE
  DnDLevelProgressEntity({
    required this.dndLevelId,
    required List<DnDSubLevelProgressEntity> subLevelsProgress,
    this.id = 0,
  }) : dndSubLevelProgress = ToMany<DnDSubLevelProgressEntity>(
          items: subLevelsProgress,
        );
}

@Entity() //flutter pub run build_runner build
class DnDSubLevelProgressEntity extends BasicEntityObject {
  @Id()
  int id;

  int dndSubLevelId;

  final ToOne<DnDLevelProgressEntity> dndLevelProgressFK;

  int contPlayedTimes;

  DnDSubLevelProgressEntity({
    required this.dndSubLevelId,
    required int dndLevelProgressEntityId,
    this.id = 0,
    this.contPlayedTimes = 0,
  }) : this.dndLevelProgressFK =
            ToOne<DnDLevelProgressEntity>(targetId: dndLevelProgressEntityId);
}
