import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

abstract class DnDLevelController extends GetxController {
  List<DnDLevelDomain> findAll();

  DnDLevelDomain findBy(int keyId);

  int count();

  //devuelve la cantidad de estrellas maximo del nivel
  int maxStars(DnDLevelDomain levelDomain);

  //devuelve la cantidad de estrellas ganadas del nivel
  int winedStars(DnDLevelDomain levelDomain);
}
