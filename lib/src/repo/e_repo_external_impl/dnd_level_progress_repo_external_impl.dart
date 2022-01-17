import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

class DnDLevelProgressRepoExternalImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<DnDLevelProgressEntity>
    implements DnDLevelProgressRepoExternal {
  DnDLevelProgressRepoExternalImpl()
      : super(DnDRepoModule
            .STORE); //TODO: ver si se manda por parametros desde arriba
}
