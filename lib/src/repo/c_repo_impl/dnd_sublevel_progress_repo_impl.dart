import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelProgressRepoImpl extends DefaultCRUDRepo<
    DnDSubLevelProgressDomain,
    DnDSubLevelProgressEntity> implements DnDSubLevelProgressRepo {
  DnDSubLevelProgressRepoImpl()
      : super(
            externalRepo: DnDSubLevelProgressRepoExternalImpl(),
            converter: DnDSubLevelProgressConverter.converter);
}

class DnDSubLevelProgressConverter extends DefaultGeneralConverter<
    DnDSubLevelProgressDomain, DnDSubLevelProgressEntity> {
  static final DnDSubLevelProgressConverter converter =
      DnDSubLevelProgressConverter._();

  DnDSubLevelProgressConverter._();

  @override
  DnDSubLevelProgressDomain toDomain(DnDSubLevelProgressEntity entity) {
    return DnDSubLevelProgressDomain(
      id: entity.id,
      dndSubLevelId: entity.dndSubLevelId,
      dndLevelProgressDomainId: entity.dndLevelProgressFK.targetId,
      contPlayedTimes: entity.contPlayedTimes,
      stars: entity.stars,
    );
  }

  @override
  DnDSubLevelProgressEntity toEntity(DnDSubLevelProgressDomain domain) {
    return DnDSubLevelProgressEntity.build(
      id: domain.id,
      dndSubLevelId: domain.dndSubLevelId,
      dndLevelProgressEntityId: domain.dndLevelProgressDomainId,
      contPlayedTimes: domain.contPlayedTimes,
      stars: domain.stars,
    );
  }
}
