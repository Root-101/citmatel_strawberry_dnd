import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDLevelProgressUseCaseImpl
    extends DefaultCRUDUseCase<DnDLevelProgressDomain>
    implements DnDLevelProgressUseCase {
  late DnDLevelProgressRepo _repo;

  DnDLevelProgressUseCaseImpl(DnDLevelProgressRepo repo)
      : _repo = repo,
        super(repo: repo);
}
