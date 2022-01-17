import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDCoreModule {
  static Future<bool> init() async {
    await DnDRepoModule.init();

    Get.put<DnDLevelUseCase>(DnDLevelUseCaseImpl(DnDLevelsAll.levels));

    Get.put<DnDLevelProgressUseCase>(
        DnDLevelProgressUseCaseImpl(DnDRepoModule.levelProgressRepo));
    Get.put<DnDSubLevelProgressUseCase>(
        DnDSubLevelProgressUseCaseImpl(DnDRepoModule.subLevelProgressRepo));

    return true;
  }

  static void dispose() {
    DnDRepoModule.dispose();
    Get.deleteAll(force: true);
  }
}
