import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDLevelsScreen extends GetView<DnDLevelController> {
  static const ROUTE_NAME = "/dnd-levels-screen";

  DnDLevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DnDLevelController>(builder: (context) {
      return CommonsLevelsThemeScreen<DnDLevelDomain>(
        levelsFindAll: controller.findAll(),
        singleThemeTileBuilder: (levelDomain) {
          return CommonsLevelsThemeSingleTile<DnDLevelDomain>(
            singleLevelDomain: levelDomain,
            buildThemeName: (levelDomain) => levelDomain.theme,
            openWidget: CommonsSingleLevel<DnDSubLevelDomain>(
              themeTitle: levelDomain.theme,
              maxStars: 0,
              winedStars: 0,
              subLevelsAll: levelDomain.sublevel,
              urlThemePicture: levelDomain.urlThemePicture,
              singleSubLevelTileBuilder: (subLevelDomain) {
                DnDSubLevelProgressDomain progressDomain =
                    Get.find<DnDSubLevelProgressUseCase>().findByAll(
                  levelDomain,
                  subLevelDomain,
                );
                return CommonsSingleSubLevelTile(
                  stars: progressDomain.stars,
                  contPlayedTimes: progressDomain.contPlayedTimes,
                  openWidget: DnDSubLevelLoading(
                    subLevelDomain: subLevelDomain,
                    subLevelProgressDomain: progressDomain,
                  ),
                );
              },
            ),
          );
        },
        urlSliverBackground: DnDAssets.WALLPAPER,
      );
    });
/*
    return CommonsLevelsScreen<DnDLevelDomain>(
      levelsFindAll: controller.findAll(),
      buildSingleLevel: (levelDomain) {
        return GetBuilder<DnDLevelController>(builder: (context) {
          return CommonsSingleLevel<DnDSubLevelDomain>(
            moduleName: "DnD",
            themeTitle: levelDomain.theme,
            maxStars: Get.find<DnDLevelController>().maxStars(levelDomain),
            winedStars: Get.find<DnDLevelController>().winedStars(levelDomain),
            urlThemePicture: levelDomain.urlThemePicture,
            subLevelsAll: (levelDomain).sublevel,
            singleLevelBuilder: (subLevelDomain) {
              DnDSubLevelProgressDomain progressDomain =
                  Get.find<DnDSubLevelProgressUseCase>().findByAll(
                levelDomain,
                subLevelDomain,
              );
              return CommonsSingleSubLevelTile(
                stars: progressDomain.stars,
                contPlayedTimes: progressDomain.contPlayedTimes,
                openWidget: DnDSubLevelLoading(
                  subLevelDomain: subLevelDomain,
                  subLevelProgressDomain: progressDomain,
                ),
              );
            },
          );
        });
      },
    );*/
  }
}
