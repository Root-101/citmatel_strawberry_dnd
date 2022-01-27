import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDLevelDomain extends BasicDomainObject<DnDLevelDomain> {
  int id;
  final String theme;
  final ToolsThemesBackgroundImage themeBackgroundImage;
  final List<DnDSubLevelDomain> sublevel;

  DnDLevelDomain({
    required this.id,
    required this.theme,
    required this.themeBackgroundImage,
    required this.sublevel,
  });

  @override
  DnDLevelDomain clone() {
    return DnDLevelDomain(
      id: this.id,
      theme: this.theme,
      themeBackgroundImage: this.themeBackgroundImage.clone(),
      sublevel: this.sublevel.map((e) => e.clone()).toList(),
    );
  }
}
