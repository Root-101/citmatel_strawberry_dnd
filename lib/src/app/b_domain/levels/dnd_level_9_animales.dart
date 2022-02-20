import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelAnimales {
  static final DnDLevelDomain levelAnimales = DnDLevelDomain(
    id: 9,
    theme: ToolsThemesAssets.THEME_ANIMALES_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_ANIMALES_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L1_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L3_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_1,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_2,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_5,
            rowPosition: 0,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L4_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_2,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_3,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_4,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_6,
            rowPosition: 1,
            columnPosition: 0,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L5_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_3,
            rowPosition: 2,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_5,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_6,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 7,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_7,
            rowPosition: 0,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 1,
        lives: 6,
        urlImage: DnDLevelsAssets.ANIMALES_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
