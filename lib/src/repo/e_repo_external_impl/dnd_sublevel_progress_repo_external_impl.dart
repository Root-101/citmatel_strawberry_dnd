import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

class DnDSubLevelProgressRepoExternalImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<DnDSubLevelProgressEntity>
    implements DnDSubLevelProgressRepoExternal {
  DnDSubLevelProgressRepoExternalImpl() : super(DnDRepoModule.STORE);
}
