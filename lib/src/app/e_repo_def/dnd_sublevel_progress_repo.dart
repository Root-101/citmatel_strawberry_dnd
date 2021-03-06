import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDSubLevelProgressRepo
    extends CRUDRepository<DnDSubLevelProgressDomain> {
  List<DnDSubLevelProgressDomain> findByLevelId(int levelId);

  DnDSubLevelProgressDomain? findByAllId(int levelId, int subLevelId);
}
