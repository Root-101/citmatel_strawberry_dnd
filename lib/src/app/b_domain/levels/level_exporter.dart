import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  //flutter run -t lib/src/app/b_domain/levels/level_exporter.dart

  runApp(MyApp());

  //print All
  initialize().then((value) {
    print('Foto de fondo de TODOS los niveles: \'bg.png\'');
    print('La posición más arriba a la izquierda es la 1,1 (Fila, Columna)');
    Get.find<DnDLevelUseCase>().findAll().forEach((theme) {
      printTheme(theme);
    });
  });
}

void printTheme(DnDLevelDomain theme) {
  print('Tema: ${theme.theme}\n');
  theme.sublevel.forEach((level) {
    print(' Nivel: #${level.id}\n');
    print('  Filas: ${level.rows} - Columnas: ${level.columns}');
    print('  Items: ${level.items.length}\n');
    level.items.forEach((item) {
      print('   Item #: ${item.id}');
      print('   Pista: ${item.hint}');
      print('   Posiciones: ${item.possiblesPositions.length}');
      item.possiblesPositions.forEach((position) {
        print(
            '    ${position.id + 1} => Fila: ${position.row + 1} - Columna: ${position.column + 1}');
      });
    });
  });
}

Future initialize() async {
  await KeyValueCoreModule.init();
  await DnDUIModule.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
