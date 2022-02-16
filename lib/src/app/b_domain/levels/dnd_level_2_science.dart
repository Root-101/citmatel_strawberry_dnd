import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelScience {
  static final DnDLevelDomain levelCiencias = DnDLevelDomain(
    id: 2,
    theme: ToolsThemesAssets.THEME_CIENCIAS_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_CIENCIAS_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.CIENCIA_L1_BG,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 3,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 0,
                column: 4,
              ),
              DnDPositionDomain(
                id: 3,
                row: 1,
                column: 4,
              ),
            ],
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        urlImage: DnDLevelsAssets.L2_BG,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.L2_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.L2_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.L2_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 3,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.L2_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 0,
                column: 4,
              ),
              DnDPositionDomain(
                id: 3,
                row: 1,
                column: 4,
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
