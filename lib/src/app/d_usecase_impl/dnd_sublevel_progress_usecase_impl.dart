import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDSubLevelProgressUseCaseImpl
    extends DefaultCRUDUseCase<DnDSubLevelProgressDomain>
    implements DnDSubLevelProgressUseCase {
  late DnDSubLevelProgressRepo _repo;

  DnDSubLevelProgressUseCaseImpl(DnDSubLevelProgressRepo repo)
      : _repo = repo,
        super(repo: repo);
}
