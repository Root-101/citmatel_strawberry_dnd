import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:get/get.dart';

class DnDCoreModule {
  static void init() {
    Get.put<DnDLevelUseCase>(DnDLevelUseCaseImpl(DnDLevelsAll.levels));
  }
}
