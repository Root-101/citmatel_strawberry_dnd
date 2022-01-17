import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDRepoModule {
  static late final Store
      STORE; //todo: posible null pointer, llamar primero al constructor

  static late final DnDLevelProgressRepo levelProgressRepo;
  static late final DnDSubLevelProgressRepo subLevelProgressRepo;

  static Future<bool> init() async {
    await openStore().then((value) {
      STORE = value;

      levelProgressRepo = DnDLevelProgressRepoImpl();
      subLevelProgressRepo = DnDSubLevelProgressRepoImpl();

      return value;
    });
    return true;
  }

  static void dispose() {
    STORE.close();
  }
}
