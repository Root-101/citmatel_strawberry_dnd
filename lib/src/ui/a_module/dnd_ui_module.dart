import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDUIModule {
  static Future<bool> init() async {
    await DnDCoreModule.init();

    Get.put<DnDLevelController>(DnDLevelControllerImpl());

    return true;
  }
}
