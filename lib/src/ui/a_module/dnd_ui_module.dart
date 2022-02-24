import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDUIModule {
  static const String MODULE_NAME = "Puzzle";
  static Color PRIMARY_COLOR = Colors.green[800]!;
  static const Color SECONDARY_COLOR = Colors.green;
  static const String URL_MODULE_BACKGROUND = DnDAssets.WALLPAPER;
  static const IconData ICON = Icons.extension;

  static Future init() async {
    await DnDCoreModule.init();

    Get.put<DnDLevelController>(DnDLevelControllerImpl());

    Get.put<DnDShowPopupController>(
      DnDShowPopupControllerImpl(
        showPopupUseCase: Get.find(),
      ),
    );
  }
}
