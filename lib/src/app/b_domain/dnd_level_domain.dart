import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelDomain extends BasicDomainObject<DnDLevelDomain> {
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

  @override
  DnDLevelDomain clone() {
    return DnDLevelDomain(
      id: this.id,
      theme: this.theme,
      urlThemePicture: this.urlThemePicture,
      sublevel: this.sublevel.map((e) => e.clone()).toList(),
    );
  }
}
