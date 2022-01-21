import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDUIModule {
  static Future init() async {
    await DnDCoreModule.init();

    Get.put<DnDLevelController>(DnDLevelControllerImpl());
  }
}
