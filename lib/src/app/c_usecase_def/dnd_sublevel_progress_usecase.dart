import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDSubLevelProgressUseCase
    extends CRUDUseCase<DnDSubLevelProgressDomain> {
  List<DnDSubLevelProgressDomain> findByLevel(DnDLevelDomain level);

  List<DnDSubLevelProgressDomain> findByLevelId(int levelId);

  DnDSubLevelProgressDomain findByAll(
      DnDLevelDomain level, DnDSubLevelDomain subLevel);

  DnDSubLevelProgressDomain findByAllId(int levelId, int subLevelId);
}
