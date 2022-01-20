import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDRepoModule {
  static late final Store
      _STORE; //todo: posible null pointer, llamar primero al constructor

  static late final DnDSubLevelProgressRepo subLevelProgressRepo;

  static Future<bool> init() async {
    Store store = await openStore().then((value) {
      _STORE = value;

      DnDSubLevelProgressRepoExternal subLevelProgressRepoExternal =
          DnDSubLevelProgressRepoExternalImpl(_STORE);

      subLevelProgressRepo =
          DnDSubLevelProgressRepoImpl(subLevelProgressRepoExternal);

      return value;
    });

    return store != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
