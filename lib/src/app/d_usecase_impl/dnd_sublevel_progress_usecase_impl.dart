import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelProgressUseCaseImpl extends DefaultCRUDUseCase<
    DnDSubLevelProgressDomain,
    DnDSubLevelProgressRepo> implements DnDSubLevelProgressUseCase {
  late DnDSubLevelProgressRepo _repo;

  DnDSubLevelProgressUseCaseImpl(DnDSubLevelProgressRepo repo)
      : _repo = repo,
        super(repo: repo);

  @override
  List<DnDSubLevelProgressDomain> findByLevel(DnDLevelDomain level) =>
      this.findByLevelId(level.id);

  @override
  List<DnDSubLevelProgressDomain> findByLevelId(int levelId) =>
      _repo.findByLevelId(levelId);

  @override
  DnDSubLevelProgressDomain findByAll(
          DnDLevelDomain level, DnDSubLevelDomain subLevel) =>
      this.findByAllId(level.id, subLevel.id);

  @override
  DnDSubLevelProgressDomain findByAllId(int levelId, int subLevelId) {
    DnDSubLevelProgressDomain? domain = _repo.findByAllId(levelId, subLevelId);
    // si es null devuelvo uno vacio para mostrarlo sin progreso en el main menu
    // si tiene algo lo devuelvo
    return domain == null
        ? DnDSubLevelProgressDomain(
            dndLevelDomainId: levelId,
            dndSubLevelDomainId: subLevelId,
          )
        : domain;
  }
}
