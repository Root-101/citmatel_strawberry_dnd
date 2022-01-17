import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';
import 'package:objectbox/objectbox.dart';

class DnDRepoModule {
  static late final Store
      STORE; //todo: posible null pointer, llamar primero al constructor

  static Future<Store> init() async {
    Store store = await openStore().then((value) {
      STORE = value;

      Get.put<DnDLevelProgressRepo>(DnDLevelProgressRepoImpl());
      Get.put<DnDSubLevelProgressRepo>(DnDSubLevelProgressRepoImpl());

      return value;
    });
    return store;
  }

  static void dispose() {
    STORE.close();
  }
}
