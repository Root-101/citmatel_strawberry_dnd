import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelDeporte {
  static final DnDLevelDomain levelDeporte = DnDLevelDomain(
    id: 5,
    theme: ToolsThemesAssets.THEME_DEPORTE_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_DEPORTE_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_1,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_2,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_3,
            rowPosition: 0,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L2_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 3,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 3,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_6,
            rowPosition: 2,
            columnPosition: 3,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 7,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_7,
            rowPosition: 3,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 8,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_8,
            rowPosition: 3,
            columnPosition: 3,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L3_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_1,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_5,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_6,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 7,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_7,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 8,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_8,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 3,
              ),
            ],
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L4_BG,
        rows: 3,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_6,
            rowPosition: 2,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L5_BG,
        rows: 3,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_6,
            rowPosition: 2,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
