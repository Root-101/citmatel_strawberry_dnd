import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';

class DnDLevelGeografia {
  static final DnDLevelDomain levelGeografia = DnDLevelDomain(
    id: 6,
    theme: ToolsThemesAssets.THEME_GEOGRAFIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_GEOGRAFIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L1_BG,
        rows: 6,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_1,
            rowPosition: 4,
            columnPosition: 4,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 1,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_5,
            rowPosition: 4,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L2_BG,
        rows: 6,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_1,
            rowPosition: 4,
            columnPosition: 4,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 1,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_5,
            rowPosition: 4,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L3_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L4_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
          ),
        ],
      ),
    ],
  );
}
