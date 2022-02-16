import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelGeneral {
  static final DnDLevelDomain levelGeneral = DnDLevelDomain(
    id: 1,
    theme: ToolsThemesAssets.THEME_GENERAL_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_GENERAL_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.GENERAL_L1_BG,
        rows: 1,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_3,
            rowPosition: 0,
            columnPosition: 3,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_4,
            rowPosition: 0,
            columnPosition: 4,
          ),
        ],
      ),
    ],
  );
}
