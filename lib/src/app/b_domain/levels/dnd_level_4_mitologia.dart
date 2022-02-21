import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelMitologia {
  static final DnDLevelDomain levelMitologia = DnDLevelDomain(
    id: 4,
    theme: ToolsThemesAssets.THEME_MITOLOGIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_MITOLOGIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L1_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
