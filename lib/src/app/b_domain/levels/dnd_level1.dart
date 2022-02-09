import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';

class DnDLevel1 {
  static final sublevel = DnDSubLevelDomain(
    id: 1,
    urlImage: DnDAssets.LEVEL1TEST,
    rows: 5,
    columns: 5,
    items: [
      DnDSubLevelItemDomain.singlePosition(
        id: 1,
        urlImage: DnDAssets.DEER,
        rowPosition: 2,
        columnPosition: 2,
      ),
      DnDSubLevelItemDomain(
          id: 2,
          urlImage: DnDAssets.MONKEY,
          possiblesPositions: [
            DnDPositionDomain(
              id: 1,
              row: 0,
              column: 0,
            ),
            DnDPositionDomain(
              id: 2,
              row: 1,
              column: 0,
            ),
            DnDPositionDomain(
              id: 3,
              row: 1,
              column: 1,
            ),
          ]),
      DnDSubLevelItemDomain.singlePosition(
        id: 3,
        urlImage: DnDAssets.FROG,
        rowPosition: 3,
        columnPosition: 1,
      ),
      DnDSubLevelItemDomain(
        id: 4,
        urlImage: DnDAssets.BIRD,
        possiblesPositions: [
          DnDPositionDomain(
            id: 1,
            row: 0,
            column: 0,
          ),
          DnDPositionDomain(
            id: 2,
            row: 0,
            column: 1,
          ),
          DnDPositionDomain(
            id: 3,
            row: 0,
            column: 2,
          ),
          DnDPositionDomain(
            id: 4,
            row: 0,
            column: 3,
          ),
          DnDPositionDomain(
            id: 5,
            row: 0,
            column: 4,
          ),
        ],
      ),
      DnDSubLevelItemDomain.singlePosition(
        id: 5,
        urlImage: DnDAssets.FLOWER,
        rowPosition: 4,
        columnPosition: 3,
      ),
    ],
  );
  static final DnDLevelDomain level1 = DnDLevelDomain(
    id: 1,
    theme: "General",
    themeBackgroundImage: ToolsThemesAssets.THEME_CULTURA_GENERAL_BACKGROUND,
    sublevel: [
      sublevel,
      sublevel.clone()..id = 2,
      sublevel.clone()..id = 3,
      sublevel.clone()..id = 4,
      sublevel.clone()..id = 5,
      sublevel.clone()..id = 6,
      sublevel.clone()..id = 7,
      sublevel.clone()..id = 8,
      sublevel.clone()..id = 9,
    ],
  );
}
