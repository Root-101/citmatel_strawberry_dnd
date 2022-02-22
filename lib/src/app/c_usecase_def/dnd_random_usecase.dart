import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';
import 'package:tuple/tuple.dart';

abstract class DnDRandomUseCase extends AbstractUseCase {
  DnDLevelDomain randomLevel();

  Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> randomSubLevel();

  Tuple2<DnDSubLevelDomain, DnDSubLevelProgressDomain> randomSubLevelOf(
      DnDLevelDomain level);
}
