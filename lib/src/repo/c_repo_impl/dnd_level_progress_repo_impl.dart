import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelProgressRepoImpl
    extends DefaultCRUDRepo<DnDLevelProgressDomain, DnDLevelProgressEntity>
    implements DnDLevelProgressRepo {
  DnDLevelProgressRepoImpl()
      : super(
            externalRepo: DnDLevelProgressRepoExternalImpl(),
            converter: DnDLevelProgressConverter.converter);
}

class DnDLevelProgressConverter extends DefaultGeneralConverter<
    DnDLevelProgressDomain, DnDLevelProgressEntity> {
  static final DnDLevelProgressConverter converter =
      DnDLevelProgressConverter._();

  DnDLevelProgressConverter._();

  @override
  DnDLevelProgressDomain toDomain(DnDLevelProgressEntity entity) {
    return DnDLevelProgressDomain(
      id: entity.id,
      dndLevelId: entity.dndLevelId,
      dndSubLevelProgress: DnDSubLevelProgressConverter.converter.toDomainAll(
        entity.dndSubLevelProgress.toList(),
      ),
    );
  }

  @override
  DnDLevelProgressEntity toEntity(DnDLevelProgressDomain domain) {
    return DnDLevelProgressEntity.build(
      id: domain.id,
      dndLevelId: domain.dndLevelId,
      subLevelsProgress: DnDSubLevelProgressConverter.converter.toEntityAll(
        domain.dndSubLevelProgress,
      ),
    );
  }
}
