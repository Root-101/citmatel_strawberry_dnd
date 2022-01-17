import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDCoreModule {
  static void init() {
    DnDRepoModule.init();

    Get.put<DnDLevelUseCase>(DnDLevelUseCaseImpl(DnDLevelsAll.levels));
  }
}
