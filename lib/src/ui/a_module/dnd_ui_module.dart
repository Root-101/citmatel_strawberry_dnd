import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDUIModule {
  static void init() {
    DnDCoreModule.init();

    Get.put<DnDLevelController>(DnDLevelControllerImpl());
  }
}
