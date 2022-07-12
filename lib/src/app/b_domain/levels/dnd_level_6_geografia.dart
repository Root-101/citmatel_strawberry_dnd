import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';
import 'package:flutter/material.dart';

class DnDLevelGeografia {
  static final DnDLevelDomain levelGeografia = DnDLevelDomain(
    id: 1,
    theme: "Geografía",
    themeBackgroundImage: ToolsThemesBackgroundImage(
      urlImage: "",
      colorStrong: const Color(0xff4e6f4d),
      colorLight: const Color(0xff896683).withOpacity(0.5),
    ),
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L2_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L3_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L4_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
          ),
        ],
      ),
    ],
  );
}
