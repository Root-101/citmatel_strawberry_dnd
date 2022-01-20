import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

abstract class DnDSubLevelProgressRepoExternal
    extends ObjectBoxCRUDRepositoryExternal<DnDSubLevelProgressEntity> {
  List<DnDSubLevelProgressEntity> findByLevelId(int levelId);

  DnDSubLevelProgressEntity? findByAllId(int levelId, int subLevelId);
}
