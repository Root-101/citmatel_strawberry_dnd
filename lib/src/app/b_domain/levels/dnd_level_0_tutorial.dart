import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:get/get.dart';

class DnDLevelTutorial {
  static final DnDLevelDomain tutorial = DnDLevelDomain(
    id: 0,
    theme: ToolsThemesAssets.THEME_TUTORIAL_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_TUTORIAL_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.TUTO_BG,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain(
            id: 1,
            urlImage: DnDLevelsAssets.TUTO_ITEM_1,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 4,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 4,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 4,
                column: 3,
              ),
              DnDPositionDomain(
                id: 4,
                row: 4,
                column: 4,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.TUTO_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 4,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 4,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 4,
                column: 3,
              ),
              DnDPositionDomain(
                id: 4,
                row: 4,
                column: 4,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.TUTO_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 4,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 4,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 4,
                column: 3,
              ),
              DnDPositionDomain(
                id: 4,
                row: 4,
                column: 4,
              ),
            ],
          ),
        ],
      )
    ],
  );

  static DnDSubLevelDomain tutorialSubLevel = tutorial.sublevel[0];

  static DnDSubLevelProgressDomain tutorialSubLevelProgress({
    int starsMultiplier = 2,
  }) {
    DnDSubLevelProgressDomain progress =
        Get.find<DnDSubLevelProgressUseCase>().findByAll(
      DnDLevelTutorial.tutorial,
      DnDLevelTutorial.tutorialSubLevel,
    );
    progress..stars = progress.stars ~/ starsMultiplier;
    return progress;
  }
}
