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
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L1_BG,
        rows: 4,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_2,
            rowPosition: 3,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_3,
            rowPosition: 3,
            columnPosition: 3,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_4,
            rowPosition: 3,
            columnPosition: 4,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_1,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_2,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_3,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_4,
            rowPosition: 0,
            columnPosition: 0,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L3_BG,
        rows: 2,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_5,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_6,
            rowPosition: 1,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L4_BG,
        rows: 2,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_5,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_6,
            rowPosition: 1,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L5_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_3,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_4,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
          ),
        ],
      ),
    ],
  );
}
