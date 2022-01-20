import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

class DnDSubLevelProgressRepoExternalImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<DnDSubLevelProgressEntity>
    implements DnDSubLevelProgressRepoExternal {
  DnDSubLevelProgressRepoExternalImpl() : super(DnDRepoModule.STORE);

  @override
  DnDSubLevelProgressEntity? findByAllId(int levelId, int subLevelId) {
    //busco el DnDSubLevelProgressEntity que tenga ese domain y ese sublevel
    final query = box
        .query(
          DnDSubLevelProgressEntity_.dndLevelDomainId.equals(levelId) &
              DnDSubLevelProgressEntity_.dndSubLevelDomainId.equals(subLevelId),
        )
        .build();
    return query.findFirst();
  }

  @override
  List<DnDSubLevelProgressEntity> findByLevelId(int levelId) {
    //busca todos los DnDSubLevelProgressEntity con el level, o sea, el progreso de todos los subniveles
    final query = box
        .query(DnDSubLevelProgressEntity_.dndLevelDomainId.equals(levelId))
        .build();
    return query.find();
  }
}
