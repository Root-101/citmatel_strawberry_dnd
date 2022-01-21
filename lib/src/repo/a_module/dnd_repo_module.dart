import 'dart:io';

import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

class DnDRepoModule {
  static late final Store
      _STORE; //todo: posible null pointer, llamar primero al constructor

  static late final DnDSubLevelProgressRepo subLevelProgressRepo;

  static const _DnDDir = "/dnd";

  static Future<bool> init({String parentDirectory = ""}) async {
    //obtiene el directorio por defecto
    Directory defaultDir = await defaultStoreDirectory();

    //se concatenan las direcciones
    Directory dbDir = Directory('${defaultDir.path}$parentDirectory$_DnDDir');

    //Se crea el directorio por si no está creado
    dbDir = await dbDir.create(recursive: true);

    _STORE = await openStore(directory: dbDir.path);

    DnDSubLevelProgressRepoExternal subLevelProgressRepoExternal =
        DnDSubLevelProgressRepoExternalImpl(_STORE);

    subLevelProgressRepo =
        DnDSubLevelProgressRepoImpl(subLevelProgressRepoExternal);

    return _STORE != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
