import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelDomain extends BasicDomainObject {
  int id;
  final String theme;
  final String urlThemePicture;
  final List<DnDSubLevelDomain> sublevel;

  DnDLevelDomain({
    required this.id,
    required this.theme,
    required this.urlThemePicture,
    required this.sublevel,
  });
}
