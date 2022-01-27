import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDLevelsScreen extends GetView<DnDLevelController> {
  static const ROUTE_NAME = "/dnd-levels-screen";

  DnDLevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DnDLevelController>(
      builder: (context) {
        return CommonsLevelsThemeScreen<DnDLevelDomain>(
          levelsFindAll: controller.findAll(),
          urlSliverBackground: DnDAssets.WALLPAPER,
          singleThemeTileBuilder: (levelDomain) {
            return CommonsLevelsThemeSingleTile<DnDLevelDomain>(
              singleLevelDomain: levelDomain,
              colorPrimary: levelDomain.themeBackgroundImage.colorStrong,
              buildThemeName: (levelDomain) => levelDomain.theme,
              buildThemeUrlImage: (levelDomain) =>
                  levelDomain.themeBackgroundImage.urlImage,
              openWidget: CommonsSingleLevel<DnDSubLevelDomain>(
                themeTitle: levelDomain.theme,
                urlThemePicture: levelDomain.themeBackgroundImage.urlImage,
                colorPrimary: levelDomain.themeBackgroundImage.colorStrong,
                colorSecondary: levelDomain.themeBackgroundImage.colorLight,
                maxStars: 0,
                winedStars: 0,
                subLevelsAll: levelDomain.sublevel,
                singleSubLevelTileBuilder: (subLevelDomain) {
                  DnDSubLevelProgressDomain progressDomain =
                      Get.find<DnDSubLevelProgressUseCase>().findByAll(
                    levelDomain,
                    subLevelDomain,
                  );
                  return CommonsSingleSubLevelTile(
                    //el primario de aqui es el secundario del otro lado
                    colorPrimary: levelDomain.themeBackgroundImage.colorLight,
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
        );
      },
    );
  }
}
