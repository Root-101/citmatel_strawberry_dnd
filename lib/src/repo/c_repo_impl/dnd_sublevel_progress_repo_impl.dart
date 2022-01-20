import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelProgressRepoImpl extends DefaultCRUDRepo<
    DnDSubLevelProgressDomain,
    DnDSubLevelProgressEntity> implements DnDSubLevelProgressRepo {
  DnDSubLevelProgressRepoExternal _externalRepo;

  DnDSubLevelProgressRepoImpl(DnDSubLevelProgressRepoExternal repoExternal)
      : _externalRepo = repoExternal,
        super(
            externalRepo: repoExternal,
            converter: DnDSubLevelProgressConverter.converter);

  @override
  List<DnDSubLevelProgressDomain> findByLevelId(int levelId) {
    //siempre devuelvo la lista aunque esté vacia
    return converter.toDomainAll(
      _externalRepo.findByLevelId(levelId),
    );
  }

  @override
  DnDSubLevelProgressDomain? findByAllId(int levelId, int subLevelId) {
    DnDSubLevelProgressEntity? entity =
        _externalRepo.findByAllId(levelId, subLevelId);
    //si es null, o sea que no existe, devuelve null y que lo procese el UC, si no lo convierto en Domain y devuelvo
    return entity == null
        ? null
        : converter.toDomain(
            entity,
          );
  }
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
      dndLevelDomainId: entity.dndLevelDomainId,
      dndSubLevelDomainId: entity.dndSubLevelDomainId,
      contPlayedTimes: entity.contPlayedTimes,
      stars: entity.stars,
    );
  }

  @override
  DnDSubLevelProgressEntity toEntity(DnDSubLevelProgressDomain domain) {
    return DnDSubLevelProgressEntity.build(
      id: domain.id,
      dndLevelDomainId: domain.dndLevelDomainId,
      dndSubLevelDomainId: domain.dndSubLevelDomainId,
      contPlayedTimes: domain.contPlayedTimes,
      stars: domain.stars,
    );
  }
}
