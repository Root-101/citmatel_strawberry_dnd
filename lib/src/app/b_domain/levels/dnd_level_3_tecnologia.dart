import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelTecnologia {
  static final DnDLevelDomain levelTecnologia = DnDLevelDomain(
    id: 3,
    theme: ToolsThemesAssets.THEME_TECNOLOGIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_TECNOLOGIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_6,
            rowPosition: 2,
            columnPosition: 0,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L2_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_6,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 7,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_7,
            rowPosition: 2,
            columnPosition: 0,
          ),
        ],
      ),
    ],
  );
}
