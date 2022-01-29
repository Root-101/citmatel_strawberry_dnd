import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDLevelTutorial {
  static final DnDLevelDomain tutorial = DnDLevelDomain(
    id: 0,
    theme: "Tutorial",
    themeBackgroundImage: ToolsThemesBackgroundImage(
      urlImage: ToolsThemesAssets.THEME_CULTURA_GENERAL,
      colorStrong: Color(0xffd4801c),
      colorLight: Color(0xffe1a41b).withOpacity(0.5),
    ),
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDAssets.WALLPAPER,
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
      )
    ],
  );

  static DnDSubLevelDomain tutorialSubLevel = tutorial.sublevel[0];

  static DnDSubLevelProgressDomain tutorialSubLevelProgress() =>
      Get.find<DnDSubLevelProgressUseCase>().findByAll(
        DnDLevelTutorial.tutorial,
        DnDLevelTutorial.tutorialSubLevel,
      );
}