import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelUseCaseImpl extends DefaultReadUseCase<DnDLevelDomain>
    implements DnDLevelUseCase {
  DnDLevelUseCaseImpl(List<DnDLevelDomain> info) : super(info);
}
