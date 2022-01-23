import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDLevelsScreen extends GetView<DnDLevelController> {
  static const ROUTE_NAME = "/dnd-levels-screen";

  DnDLevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonsLevelsScreen<DnDLevelDomain>(
      levelsFindAll: controller.findAll(),
      buildSingleLevel: (levelDomain) {
        return CommonsSingleLevel<DnDSubLevelDomain>(
          urlThemePicture: levelDomain.urlThemePicture,
          subLevelsAll: (levelDomain).sublevel,
          singleLevelBuilder: (subLevelDomain) {
            return GetBuilder<DnDLevelController>(builder: (context) {
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
                  showTutorial: controller.showTutorial(
                    levelDomain.id,
                    subLevelDomain.id,
                  ),
                ),
              );
            });
          },
        );
      },
    );
  }
}
