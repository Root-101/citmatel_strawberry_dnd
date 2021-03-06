import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDCoreModule {
  static Future init() async {
    await DnDRepoModule.init();

    //sin dependencia
    Get.put<DnDLevelUseCase>(DnDLevelUseCaseImpl(DnDLevelsAll.levels));
    Get.put<DnDRandomUseCase>(DnDRandomUseCaseImpl());

    //el de progreso con la BD
    Get.put<DnDSubLevelProgressUseCase>(
      DnDSubLevelProgressUseCaseImpl(DnDRepoModule.subLevelProgressRepo),
    );

    Get.put<DnDShowPopupUseCase>(DnDShowPopupUseCaseImpl());
  }

  static void dispose() {
    DnDRepoModule.dispose();
    Get.deleteAll(force: true);
  }
}
