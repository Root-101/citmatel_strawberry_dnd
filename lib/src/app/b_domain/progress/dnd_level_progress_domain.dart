import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelProgressDomain extends BasicDomainObject<DnDLevelProgressDomain> {
  int id;
  final int dndLevelId;

  final List<DnDSubLevelProgressDomain> dndSubLevelProgress;

  //default construct, DON'T REMOVE
  DnDLevelProgressDomain({
    required this.dndLevelId,
    required this.dndSubLevelProgress,
    this.id = 0,
  });
}
