import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';
import 'package:clean_core/clean_core.dart';
import 'package:flutter_animator/utils/pair.dart';

abstract class DnDLevelUseCase extends ReadUseCase<DnDLevelDomain> {
  String themeOfGivenLevel(DnDSubLevelProgressDomain progressDomain);

  ToolsThemesBackgroundImage themeLooksOfGivenLevel(
      DnDSubLevelProgressDomain progressDomain);

  Pair<DnDLevelDomain, DnDSubLevelDomain> levelOfProgress(
      DnDSubLevelProgressDomain progressDomain);

  Pair<DnDSubLevelDomain, DnDSubLevelProgressDomain> nextLevel(
      DnDSubLevelProgressDomain currentProgress);
}
